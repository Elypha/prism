# Execute a Long Task

Treat the task as a durable objective with an explicit completion contract.

## Establish the contract

Read [objective-contract.md](objective-contract.md) and establish the task contract before planning. Let it govern phases and completion gates.

## Establish current state

- Read applicable `AGENTS.md` files and active project entry documents.
- Inspect repository status, existing user changes, relevant runtime state, and authoritative external sources.
- Identify what is complete, merely claimed, stale, and unknown.
- Preserve dirty worktrees and unrelated changes.

## Build and maintain the plan

- Make phases correspond to observable outcomes rather than generic activity.
- Give each phase its own verification step and dependencies.
- Split work where an outcome can be independently accepted or rejected and its dependencies can be stated clearly. Do not split by elapsed time, file count, or implementation ceremony.
- Keep one action current. Mark completed work promptly and revise the route when evidence invalidates an assumption.
- Do not weaken acceptance criteria to make progress look complete.
- Bind each material action to an open gate and the evidence it should produce. Drop or defer work that advances none.

## Execute with evidence

Read [evidence.md](evidence.md) for evidence rules.

- Complete authorised in-scope actions directly.
- Validate each material change before building more work on it.
- Use background commands for independent long-running processes and report state changes rather than polling noise.
- Use a subagent workflow when independent work can be bounded by a task-local contract and the gain in speed, context isolation, or independent scrutiny exceeds its coordination cost. If platform policy or material cost or risk makes delegation a user choice, recommend it with the tradeoff instead of silently serialising the work.
- Give each subagent the smallest complete task-local contract and authoritative artefact paths. Keep cross-task decisions, conflict resolution, and final synthesis in the primary thread; return distilled findings and evidence pointers rather than accumulated history or raw artefacts.
- Keep disposable artefacts in isolated scratch. Never make durable configuration depend on scratch.

## Recover from stalls

Read [recovery.md](recovery.md) when attempts repeat or a transition is risky.

- Stop repeating an action after the same failure recurs; diagnose the blocking layer.
- Switch to Prism's diagnosis mode when an unexplained failure requires causal diagnosis rather than only a strategy reset. Do not stack fixes on an untested explanation.
- Use the installed `prism-strategist` when available. Otherwise spawn one read-only subagent to diagnose the failed assumption, preserve the objective, propose one materially different route, and state its falsifying evidence.
- Preserve non-reconstructible state before a session boundary.
- Prefer managed worktrees for isolated autonomous changes. Do not emulate rewind by stashing or resetting a shared dirty checkout.

## Close the objective

- Run planned verification on the real user path where feasible.
- Switch to Prism's verification mode as an independent final gate for material work.
- Fix failed findings in the primary thread, then re-run verification.
- Reconcile every deliverable and acceptance criterion before claiming completion.
- Persist only context that cannot be reconstructed from code, Git, live systems, or authoritative documents.
- Report verified outcomes, remaining uncertainty, skipped checks, external dependencies, and recovery implications.
- Order the final report by user impact and unresolved risk, not by execution chronology.
