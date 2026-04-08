#!/usr/bin/env bash

set -u

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"
LIB_SETS="${LIB_SETS:-current legacy}"

exec > "$SCRIPT_DIR/benchmark.res" 2>&1

run_for_lib_set() {
	local lib_set="$1"
	local log_dir="$SCRIPT_DIR/logs/$lib_set"

	mkdir -p "$log_dir"

	echo -e "\n########################################"
	echo "Starting Sigma benchmark with LIB_SET=$lib_set"
	echo "########################################"

	echo -e "\nSigma with assoc: running..."
	time make -C "$ROOT_DIR" sigma=1 assoc=1 LIB_SET="$lib_set" > "$log_dir/LOG_assoc.txt"
	grep RESULT "$log_dir/LOG_assoc.txt" || echo "No RESULT lines found"

	echo -e "\nSigma no collision: running..."
	time make -C "$ROOT_DIR" sigma=1 LIB_SET="$lib_set" > "$log_dir/LOG_no.txt"
	grep RESULT "$log_dir/LOG_no.txt" || echo "No RESULT lines found"

	echo -e "\nSigma with collision: running..."
	time make -C "$ROOT_DIR" sigma=1 col=1 LIB_SET="$lib_set" > "$log_dir/LOG_col.txt"
	grep RESULT "$log_dir/LOG_col.txt" || echo "No RESULT lines found"

	echo -e "\nCompleted Sigma benchmark with LIB_SET=$lib_set"
}

for lib_set in $LIB_SETS; do
	run_for_lib_set "$lib_set"
done

echo -e "\nGenerated Sigma log files:"
find "$SCRIPT_DIR/logs" -type f -name "LOG_*.txt" | sort || echo "No Sigma log files found"