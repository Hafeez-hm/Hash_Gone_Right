# Universal Protocol Test Suite

This directory contains a synthetic "universal" protocol model designed to exercise all algebraic, combinatorial, and attacker-driven edge cases relevant to hash-based protocol verification. It is inspired by and references features from SIGMA, IKE_S, and NDSS IKE protocols.

## Files
- `universal_protocol.pv`: Main protocol model (standalone protocol).
- `README.md`: This file.

## Features Covered
- Role structure aligned with the working IKE/SIGMA models: key publication, two-party sessions, and corruption process.
- Library-agnostic hash abstraction via `buildH` and `eq_hash`, so the same model runs under:
	- no-collision (`hash_no_collision.pvl`)
	- collision (`hash_no_collision.pvl` + `hash_collision.pvl`)
	- assoc (`assoc_no_collision.pvl`)
- Depth mismatch trigger paths: transcript forms with and without cookie prefix to exercise merge axioms.
- Attacker-controlled head-block paths: attacker-provided head term prepended before hashing.
- Cross-session/replay surface: replicated roles over public channel with attacker interleavings.
- Agreement hierarchy mirrored from your report:
	- type-flaw style agreement (`acceptB2 -> initA2`)
	- transcript agreement (`eq_hash(t,t')`)
	- hash agreement (`eq_hash(h,h')`)
- Session-key secrecy and sanity reachability checks.

## Why This Is Defensible As Universal
- It is not tied to one protocol message grammar; instead it captures the common role and transcript-construction core used across IKE/SIGMA-style authenticated DH handshakes.
- It directly includes the two root causes discussed in the report:
	- depth-mismatch equality paths
	- attacker-controlled variable/head interactions
- It preserves symbolic comparability with existing case studies because query/event style matches your established models.

## References
- SIGMA, IKE_S, NDSS IKE models in this repository
- ProVerif, Tamarin, and AVISPA protocol model libraries
