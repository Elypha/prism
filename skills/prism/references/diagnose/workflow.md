# Diagnose Systematically

Establish a causal explanation before proposing a root fix. Keep containment, diagnosis, and correction distinct so an urgent mitigation or plausible patch is not mistaken for understanding.

## Frame the claim

- State the exact observed symptom, affected scope, triggering conditions, and authoritative observation.
- Separate observations from interpretations and preserve the exact errors, inputs, paths, timestamps, or state transitions needed to reproduce or correlate the failure.
- If immediate containment is necessary, apply only the authorised safe mitigation and label what remains unexplained.

## Localise the first divergence

- Reproduce through the real path when feasible. When reproduction is intermittent, gather discriminating observations instead of guessing.
- Compare a failing case with the nearest credible working case and identify where their observable states first diverge.
- In a multi-component path, inspect only the boundaries needed to locate that divergence. Observe what crosses the boundary and the configuration or state that governs it; protect secrets and avoid broad logging by default.
- Trace an invalid value or transition backward to its earliest supported source. Read [causal-tracing.md](causal-tracing.md) when the symptom appears far from its trigger.

## Test the causal model

- Form one concrete hypothesis that explains the evidence and predicts a new observation.
- Choose the smallest safe test that distinguishes that hypothesis from its strongest alternative. State what each result would mean before running it.
- When evidence disproves the hypothesis, update the model. Do not stack another speculative change on top of an unverified one.
- Read [condition-based-waiting.md](condition-based-waiting.md) when arbitrary delays or asynchronous transitions obscure the observation.

## Correct and verify

- Correct the earliest supported fault that belongs within the task's authority and scope. Avoid unrelated hardening or refactoring.
- Verify the original symptom through the real path and check the material boundary affected by the correction. Passing proxies do not prove the causal claim unless they exercise that path.
- Report whether the result is a root fix, containment, workaround, or unresolved diagnosis. Do not upgrade one category into another without evidence.

## Know when to stop or change strategy

- Begin a root correction when the evidence chain identifies an actionable divergence and explains why correcting it should prevent the observed symptom.
- Improve observability when the available observations cannot distinguish competing explanations.
- Change the investigated layer, hypothesis, or strategy when repeated attempts stop producing new information; use a read-only strategist when the investigation model itself has stalled.
- If the environment cannot establish cause, return the narrowest supported fault boundary, the unresolved alternatives, and the next discriminating observation instead of inventing certainty.

## Report by decision value

Lead with the causal conclusion if established. Then give the shortest evidence chain that supports it, the correction or containment performed, verification of the original symptom, and remaining uncertainty. If the cause remains unresolved, lead with that fact and the most useful next observation.
