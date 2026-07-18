# Documentation Architecture

## Design rules

- Organise documents by responsibility and time sensitivity, not session chronology.
- Keep one source of truth per responsibility.
- Persist knowledge that cannot be reconstructed reliably from code, Git, tests, generated artefacts, or live systems.
- Give a cold-starting agent a reading order and direct statement of what remains.
- Treat temporary handoffs as transfer buffers rather than permanent authorities.
- Start from the project's existing structure. Suggested responsibilities are not required files, filenames, headings, or a complete taxonomy.

## Assign responsibility only when needed

Keep durable operating rules in the applicable `AGENTS.md`. Keep intent, rationale, source-of-truth boundaries, and non-obvious traps in an existing project document when one can own them clearly.

Maintain enough working state to recover the full objective and amendments, what is verified or open, and the next useful action. Keep volatile facts only when continuation depends on them, with their source or verification status. This state may share a document with durable context when the ownership remains clear.

Record a decision separately only when its rationale, rejected alternatives, or reversal condition would otherwise be lost. Record verification separately only when its evidence contract or unresolved gaps need a durable owner. Add a domain document only for a durable boundary that code and authoritative systems cannot explain safely.

Use a temporary handoff only when at-risk state cannot yet be placed in an owner. Preserve the objective without narrowing it, the non-reconstructible state at risk, and the immediate frontier; after recovery, absorb that content and remove the parallel authority only when authorised and safe.

## Location and authority

Choose document locations from the intended audience and repository conventions. Promote conclusions deliberately and keep one authority per responsibility.

## Consolidate

Capture high-fidelity non-reconstructible state before loss, then continue the task without polishing the capture into a narrative. At a real boundary, consolidate it into the smallest set of owners, remove stale duplication, and re-test the cold-start reading order. Remove or archive a handoff only after its unique durable content has been absorbed and the action is authorised.
