#!/usr/bin/env bash

# Benchmark all adapted protocol models against assoc/no/collision hash libs.
# Output summary goes to benchmark.res and detailed logs to
# Testing/logs/protosuite/<lib_set>/<model>/LOG_<mode>.txt.

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

exec > "$SCRIPT_DIR/benchmark.res" 2>&1

MODELS_DIR="$ROOT_DIR/Protocols/Protocol_Models_Adapted"
DEFAULT_LOG_ROOT="$SCRIPT_DIR/logs"
LOG_ROOT="${LOG_ROOT:-$DEFAULT_LOG_ROOT}"
PV_TIMEOUT="${PV_TIMEOUT:-120}"
LIB_SETS="${LIB_SETS:-current legacy}"

if ! mkdir -p "$LOG_ROOT" 2>/dev/null; then
  LOG_ROOT="$SCRIPT_DIR/logs-fallback"
  mkdir -p "$LOG_ROOT"
  echo "Warning: default logs path not writable; using $LOG_ROOT"
fi

if [ ! -d "$MODELS_DIR" ]; then
  echo "Error: $MODELS_DIR directory not found"
  exit 1
fi

mapfile -t MODELS < <(find "$MODELS_DIR" -maxdepth 1 -type f -name "*.pv" -printf "%f\n" | sort)

if [ "${#MODELS[@]}" -eq 0 ]; then
  echo "No .pv files found in $MODELS_DIR"
  exit 1
fi

run_mode() {
  local lib_set="$1"
  local mode_name="$2"
  local mode_flags="$3"

  echo -e "\n============================"
  echo "Library set: $lib_set | Mode: $mode_name"
  echo "============================"

  for model in "${MODELS[@]}"; do
    local stem="${model%.pv}"
    local model_log_dir="$LOG_ROOT/$lib_set/$stem"
    local log_file="$model_log_dir/LOG_${mode_name}.txt"

    mkdir -p "$model_log_dir"

    echo -e "\n[$lib_set][$mode_name] $model: running..."

    local status
    if [ -n "$mode_flags" ]; then
      timeout "$PV_TIMEOUT" make -C "$ROOT_DIR" protosuite=1 MODEL="$model" LIB_SET="$lib_set" $mode_flags > "$log_file" 2>&1
      status=$?
    else
      timeout "$PV_TIMEOUT" make -C "$ROOT_DIR" protosuite=1 MODEL="$model" LIB_SET="$lib_set" > "$log_file" 2>&1
      status=$?
    fi

    if [ "$status" -eq 124 ]; then
      echo "Timed out after ${PV_TIMEOUT}s"
    elif [ "$status" -ne 0 ]; then
      echo "Command exited with status $status"
    fi

    if grep -q "RESULT" "$log_file"; then
      grep "RESULT" "$log_file"
    else
      echo "No RESULT lines. First diagnostic:"
      grep -m 1 -nE "Error:|Syntax error|Cannot|not allowed|File not found" "$log_file" || head -n 5 "$log_file"
    fi
  done
}

run_lib_set() {
  local lib_set="$1"

  echo -e "\n########################################"
  echo "Starting benchmark with LIB_SET=$lib_set"
  echo "########################################"

  run_mode "$lib_set" "assoc" "assoc=1"
  run_mode "$lib_set" "no" ""
  run_mode "$lib_set" "col" "col=1"

  echo -e "\nCompleted benchmark with LIB_SET=$lib_set"
}

for lib_set in $LIB_SETS; do
  run_lib_set "$lib_set"
done

echo -e "\nGenerated protosuite log files:"
find "$LOG_ROOT" -type f -name "LOG_*.txt" | sort || echo "No protosuite log files found"
