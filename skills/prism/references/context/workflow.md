# Preserve Task Context

Keep non-reconstructible knowledge durable while leaving code, Git, generated output, and live systems as the source of truth for reconstructible state.

Read [documentation-architecture.md](documentation-architecture.md) before creating or reorganising documents.

## Capture

Use before compaction, pause, handoff, or a stage change.

- Maintain a minimal working state during long work because automatic compaction may occur without a useful warning.
- Preserve non-reconstructible information that changes the contract, reasoning, evidence, risk, or next useful action. Keep exact wording and retrieval handles when fidelity matters.
- Record volatile facts only when needed to resume, with timestamp or verification status.
- Update an existing authoritative document when one exists. Do not create a new handoff by default.

## Consolidate

- Merge fragmented entries by responsibility.
- Move settled knowledge into its durable owner.
- Keep the current frontier distinguishable from durable policy.
- Remove stale statements rather than retaining every historical version.
- Remove or archive an obsolete handoff only after its unique durable content has an owner and the action is authorised. Otherwise leave it pending.

## Resume

Follow the project's reading order when one exists. Otherwise begin with applicable instructions and the documentation entry point, then read the current frontier and only the owners relevant to the active stage. Reconstruct implementation and runtime state from Git and live systems, re-check drift-prone facts, and return a prioritised statement of what remains rather than a recap.

## Exclude reconstructible noise

Do not preserve information that an authoritative source can reconstruct reliably or that no longer changes a future decision.

Do not preserve reporting noise or speculative concerns outside user-requested or documented operating conditions.

## Shape documents around responsibility

Follow existing project conventions and choose locations for the intended audience. Split documents only when responsibility, authority, or rate of change genuinely differs; otherwise prefer one dense owner. Do not impose a standard document suite, filename set, heading structure, or field list, and never maintain the same responsibility in multiple places.
