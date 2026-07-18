# Causal Tracing

Use this technique when the visible failure occurs downstream from the state or transition that created it.

## Trace backward

1. Start at the operation that exposes the symptom and record the invalid state, input, or transition it observed.
2. Identify the immediate producer or caller responsible for that state.
3. Ask what earlier observation or assumption allowed it to become invalid.
4. Continue across callers, data transformations, queues, processes, or configuration layers until the chain reaches an actionable violated contract.
5. Preserve the evidence linking each step. A plausible call path without observations is a hypothesis, not a causal trace.

## Choose the stopping point

Stop at the earliest supported violation whose correction explains the downstream symptom and prevents it on the relevant path. Do not stop at the first defensive check that could hide the symptom, and do not chase an abstract organisational or historical cause that cannot change the technical outcome.

When several upstream causes remain credible, design an observation that separates them before choosing a fix.

## Instrument narrowly

- Observe immediately before and after the boundary where state may diverge.
- Capture correlation identifiers and governing configuration when they are material to the transition.
- Record expected and observed state in a form that can be compared across working and failing runs.
- Avoid secrets, unrelated payloads, and high-volume logging that does not distinguish a hypothesis.
- Remove temporary instrumentation after diagnosis unless it provides durable operational value.
