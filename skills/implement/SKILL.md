---
name: implement
description: Use when implementing a requested software change with observable success criteria; use debug for a reported failure.
---

# Implement an outcome

Inspect the supplied reference and affected implementation. Infer compact acceptance criteria from the outcome, constraints, permitted side effects, and evidence of success.

- Resolve routine details yourself. For a new project or large ambiguous feature, clarify consequential decisions first; summarize the goal, constraints, exclusions, and success criteria, then continue.
- Implement directly for clear, bounded work. Investigate unfamiliar paths, ambiguous dependencies, weak verification, or failed attempts before dependent changes.
- Reuse existing code, then standard library or native features, then installed dependencies. Make the smallest complete change across affected callers and fixtures.
- For authentication, security, secrets, privacy, payments, destructive operations, migrations, concurrency, public APIs, or effects across systems, use deterministic checks and independent review. Delegation still requires authorization; report required review as outstanding when unavailable. Obtain approval for irreversible production actions.
- Verify behavior with meaningful focused tests; verify documentation and configuration with relevant parse, diff, or link checks. Broaden checks only for a specific integration need or unresolved risk.

Continue through implementation and verification unless the user requested discovery only. Ask only about uncertainty that materially changes the result. Do not create plan files, delegate, or perform Git delivery without authorization. Report the change, checks, and remaining gaps.
