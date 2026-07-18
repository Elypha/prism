---
name: prism
description: Drive complex, multi-objective, multi-stage work to evidence-backed completion. Use for long migrations, broad refactors, deployments, mixed research-and-implementation tasks, causal diagnosis of stubborn bugs, regressions, performance problems, or unexplained system behaviour, independent completion audits, maintainability reviews, and durable context capture across sessions. Do not use for a simple one-step edit or a narrow factual answer.
---

# Prism

Treat complex work as a stable objective with an explicit contract, not as a loose sequence of turns. Load only the mode and references needed for the current stage.

## Select the mode

- **Execute a long task:** Read [workflow.md](references/execute/workflow.md), [objective-contract.md](references/execute/objective-contract.md), and [evidence.md](references/execute/evidence.md). Read [recovery.md](references/execute/recovery.md) when attempts repeat, context pressure rises, or the checkout is risky.
- **Diagnose unexplained behaviour:** Read [workflow.md](references/diagnose/workflow.md). Read [causal-tracing.md](references/diagnose/causal-tracing.md) when the visible symptom is downstream from its trigger, and [condition-based-waiting.md](references/diagnose/condition-based-waiting.md) when asynchronous progress obscures the observation.
- **Verify completion:** Read [workflow.md](references/verify/workflow.md), [verifier-contract.md](references/verify/verifier-contract.md), and [review-lenses.md](references/verify/review-lenses.md).
- **Review maintainability:** Read [workflow.md](references/maintainability/workflow.md).
- **Preserve or resume context:** Read [workflow.md](references/context/workflow.md) and [documentation-architecture.md](references/context/documentation-architecture.md).

Combine modes when the objective requires it, but keep one current action and one owner for final synthesis. A common long-task path is execute, preserve at real boundaries, then verify.

Unless a section explicitly defines a protocol, verdict, or completion gate, treat its lists and examples as prompts for judgement rather than exhaustive taxonomies, required output shapes, or limits on relevant action.

## Preserve the shared contract

- Reconstruct the task contract from all user-authored messages in chronological order, including the original request and every later correction: objective, deliverables, named artefacts, constraints, acceptance criteria, and explicit exclusions.
- Preserve exact user wording when paraphrase could change scope, priority, authorisation, acceptance, or a retrieval handle.
- Keep the objective stable. Plans and subagent outputs may clarify it but may not silently narrow it.
- Inspect current repository and live-system evidence before trusting summaries.
- Preserve unrelated changes and authorisation boundaries.
- Distinguish a completed stage from the completed objective.
- Verify outcomes through the real or shipped path when feasible. Treat proxy checks only as evidence for what they exercise.
- Carry the synthesis burden and ask only questions that expose a material unresolved fork.

## Hold the continuity invariant

- Keep an internal, compact working state throughout the task: full objective and amendments, current stage, completed gates with evidence, open gates and blockers, and the next action with its expected observation. Refresh it when the contract, stage, blocker, or evidence-backed route changes; do not restate or persist it by default.
- At material decision points and before external reporting, reconcile the work with that state. Do not let a fresh finding, subtask, verifier comment, or tool result silently replace the main objective.
- After compaction, handoff, or resume, recover the working state before continuing and re-check drift-prone facts. Treat summaries and agent reports as lossy orientation, not authority.

## Protect signal

- Apply one relevance test before promoting new information into the mainline: does it change the contract or a completion gate, the next action, confidence in material evidence, safety or authorisation risk, or a decision the user must make? If yes, classify it as **gating** when it can block completion or **material** when it changes the route or confidence. Otherwise defer it as **optional** or discard it as **noise**.
- Anchor issues to an explicit requirement, user-requested or documented operating conditions, an evidenced primary path, safety or authorisation, or evidence integrity. Hypothetical misuse, speculative hardening, stylistic preference, expected tool output, and unchanged status stay outside the mainline unless the user requests them or evidence makes them relevant.
- Preserve the provenance and epistemic status of material claims. Do not silently promote user-provided information, observations, inferences, proposals, or unresolved uncertainty into verified facts or settled decisions.
- During long work and at completion, report material state changes rather than activity. Lead with the outcome or highest-impact change, then include only the evidence, blockers, decisions, uncertainty, and next action needed for review or continuation.
- Use headings, bullets, numbering, and checklists only when they help the reader compare or act on distinct priorities, dependencies, evidence, ownership, or decisions. Do not expose an internal checklist as decorative structure.
- Preserve exact paths, commands, errors, and observations when they are needed for audit or continuation; omit raw logs and routine successful steps that add no decision value.

## Use Prism agents

- Prefer the installed `prism-verifier` for independent completion audits.
- Prefer the installed `prism-strategist` when repeated attempts stop producing information.
- If either named role is unavailable, use the read-only general-subagent fallback defined by that mode. The workflow must not depend on optional local configuration.
