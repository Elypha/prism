# Verify Work

Run an independent evidence-based completion audit. The implementer must not grade its own claims without a separate review phase.

## Define scope

- Reconstruct the complete user contract from all user-authored messages in the supplied task context, including the original request and every later correction.
- Include code, documents, decisions, research answers, external actions, deployment, Git or PR work, and named artefacts.
- If the user supplied a focus area, scope the verdict to it while retaining related context that can invalidate the result.

## Run the independent review

Read [verifier-contract.md](verifier-contract.md) and the applicable sections of [review-lenses.md](review-lenses.md).

If already acting as the delegated verifier, execute the contract directly and never spawn another verifier.

Otherwise, use the installed `prism-verifier` when available. If no named role exists, spawn one general read-only subagent with the two references, full task context, exact artefact paths, prior evidence, and the verification focus. Request exactly one independent verifier.

Before delegation, the primary agent should run required build, test, lint, render, deploy, or launch commands that can write files or external state. The read-only verifier audits those results and may repeat only checks known to be non-mutating. Missing required evidence remains a finding.

If no subagent is available, perform a clearly separated second-pass audit after discarding implementation assumptions and disclose that independence was limited.

## Interpret and converge

- `VERDICT: PASS` means every gating requirement is corroborated with no demonstrated contract-breaking defect.
- `VERDICT: FAIL` means a required outcome is missing, broken, contradicted, or lacks a feasible required evidence path.
- Treat a missing or malformed verdict as a failed verification run.
- Let the primary agent fix findings, then re-run verification for material fixes.
- On later rounds, check prior gaps first. Add a new blocker only for a demonstrable defect or overlooked explicit requirement.
- If repeated rounds stop converging, change strategy or report the objective as incomplete with the remaining gaps. Call it blocked only for a stable external condition, missing authority, contradiction, or confirmed inability to proceed safely.

## Report

Report blockers and material uncertainty first, ordered by contract impact. State verified outcomes and the final verdict without reproducing the entire internal checklist or routine successful checks. Keep raw logs out while preserving exact paths, commands, errors, URLs, and state queries needed to audit a material claim.
