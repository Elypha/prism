# Objective Contract

Use this contract internally for every long task. It may live in the plan, a task note, or structured working state. Treat the fields as a completeness check rather than a required form: omit what does not apply and add any task-specific dimension that can change the outcome. Do not create a repository document unless the state must survive a session boundary.

## Contract fields

1. **Objective:** Preserve the requested outcome and intent.
2. **Deliverables:** List required code, documents, decisions, deployments, external actions, or answers.
3. **Named artefacts:** Record files, URLs, tickets, images, commands, APIs, and systems explicitly named.
4. **Constraints:** Record scope, safety, compatibility, style, language, performance, evidence, and no-side-effect requirements.
5. **Acceptance criteria:** State observable conditions required for completion.
6. **Non-goals:** Record exclusions and adjacent work that must not be inferred.
7. **Dependencies and authority:** Identify source-of-truth order and external prerequisites.
8. **Verification plan:** Map each acceptance criterion to an observation or evidence source.

## Immutability

- Reconstruct the objective from all user-authored messages in chronological order. The user objective, named artefacts, and explicit constraints remain immutable unless the user changes them.
- A plan is a derived aid. It may clarify the contract but may not replace or narrow it.
- Later corrections amend the contract. Reconcile them instead of leaving contradictory versions active.
- Do not weaken a criterion because it is inconvenient, expensive, or currently unverifiable.
- Repair the plan when it conflicts with the objective.

## Continuity invariant

Keep enough compact state to answer these questions at any point:

- What is the full objective, including later amendments?
- Which stage is active, and which acceptance gate does it advance?
- What is verified complete, with what evidence?
- What remains open, blocked, uncertain, or explicitly out of scope?
- What is the next action, and what observation would make it useful?

Keep this as internal working state. Refresh it when the contract changes, a stage closes, a blocker appears, or evidence invalidates the route; do not repeatedly emit or persist it. Do not wait for a compaction warning that may never arrive.

## Classify criteria

- **Gating:** Required for completion. Failure or missing evidence blocks the claim.
- **Evidence:** Strengthens confidence and may use an explicitly documented fallback when the real path cannot be driven here.
- **Optional:** Useful follow-up outside the completion gate.

Keep criteria outcome-oriented. Prefer “the deployed route returns the expected response” over “the deployment command ran successfully.”

## Multi-objective work

- Give each explicit objective its own deliverables and gate.
- Mark dependencies and parallelise only independent work.
- Keep shared invariants in one place.
- Do not confuse a completed phase, component test, or subagent with completion of the parent objective.

## Question discipline

Before asking the user, inspect local guidance and current state, search authoritative sources, and determine whether a safe reversible assumption can preserve progress. Ask only when different answers materially change the deliverable, external impact, or authority. State the working interpretation and exact fork rather than turning contract extraction into a questionnaire.
