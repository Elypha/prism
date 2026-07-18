# Execution and Evidence

## Verification hierarchy

Prefer evidence in this order when applicable:

1. The real user-visible or externally observable outcome.
2. The shipped entry point under realistic conditions.
3. A focused integration test across the changed boundary.
4. A unit test of the real shipped function.
5. Static or structural evidence when runtime execution is unavailable.
6. Prose claims and proxy signals only as orientation.

Use the cheapest level that honestly proves the criterion. Do not require broad end-to-end runs when a narrow real-path check is sufficient.

## Test integrity

A check is not proof when it hard-codes expected output, reimplements the algorithm, mocks the unit's own behaviour, begins after the claimed transition, cannot fail for the defect, or validates fabricated evidence as runtime output.

Faking clocks, randomness, network responses, storage, or output sinks can be honest when it makes the real unit deterministic and observable.

## Match evidence to the claim

Choose evidence from the claimed outcome and its authoritative source. The patterns below are common cases, not a task taxonomy.

### Code and configuration

- Read changed code and the surrounding ownership boundary.
- Run targeted build, type, lint, and test commands that cover the changed path.
- Confirm tests exercise the contract rather than an implementation copy.
- Use broader suites only for broad changes or when narrow checks cannot expose integration risk.

### Operational and external actions

- Confirm acceptance by the target system.
- Verify resulting state through an authoritative query, endpoint, deployed artefact, remote branch, PR, or live resource.
- Distinguish command success from requested outcome existence.
- Record partial or delayed external state explicitly.

### Research and diagnosis

- Tie conclusions to primary sources, repository evidence, or captured observations.
- Separate observation, inference, competing hypothesis, and unresolved uncertainty.
- Do not stop at a workaround when the task asks for root cause.

### Visual and interactive work

- Render, open, capture, or inspect actual output when authorised and feasible.
- Verify layout and interaction at the relevant size or state.
- Use a documented structural fallback when the environment cannot drive the UI and state what remains unverified.

## Working evidence

- Keep long logs out of the main conversation; return distilled findings and retrieval paths.
- Use task-private scratch and collision-resistant names.
- Capture exact error text and the action that produced it.
- Never persist configuration or source references that depend on disposable scratch.

## Completion ledger

Map each gating criterion to verified with exact observation, failed with concrete gap, or unverifiable here with the reason and safest next evidence path. Effort, code volume, unrelated passing tests, or confidence do not close a missing gate.
