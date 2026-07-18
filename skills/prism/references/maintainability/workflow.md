# Review Maintainability

Judge whether an implementation is easy to understand, audit, change, and remove. Do not reward complexity merely because it is abstracted or tested.

## Establish the lens

- Confirm the scope: current diff, branch, named files, or subsystem.
- Respect a narrow readability or auditability request. Do not turn it into an unrelated runtime-testing exercise.
- Read surrounding code, local instructions, and canonical helpers before proposing structural changes.
- Review only unless the user asks to implement fixes.

## Review priorities

Let the actual change expose the concerns rather than treating this section as a checklist. Look first for:

- a reframing that deletes incidental concepts instead of relocating them;
- canonical ownership and cohesive boundaries;
- a direct, legible real path without scattered state or special cases;
- abstractions and contracts that reveal real invariants and earn their cost;
- a narrow, auditable change without unsupported compatibility or defensive machinery.

Treat size, naming, sequencing, atomicity, and similar properties as signals when they reveal one of these problems or another material maintenance cost, not as independent quotas.

## Findings

Prioritise a small number of high-conviction structural findings. For each, include the exact location, problem, maintenance impact, simplest credible remedy, and severity. Do not flood the review with naming nits, demand a rewrite merely because another design exists, or substitute maintainability preference for a correctness defect.

If no material problem exists, say so directly and identify the properties that keep the implementation reviewable.
