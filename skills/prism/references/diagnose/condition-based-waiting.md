# Condition-Based Waiting

Use condition-based waiting when an observation depends on asynchronous progress and an arbitrary delay would hide whether the expected transition occurred.

## Wait for evidence

- Wait for the event, state, count, resource, or externally observable condition that makes the next assertion meaningful.
- Prefer the system's synchronisation primitive or event notification. Poll only when no direct signal exists.
- Treat a deadline as a safety bound, not as evidence of success. On timeout, report the expected condition and the last observed state.
- Re-read state on every poll and choose an interval appropriate to the system rather than copying a universal value.

## Preserve real timing semantics

An elapsed-time wait is appropriate when time itself is the behaviour under test, such as a debounce, lease, retry schedule, or expiry. Anchor the wait to an observed triggering event and explain which timing contract the duration exercises.

If the task only needs eventual completion, replace guessed sleep duration with the condition that defines completion.
