# Review Lenses

Apply every lens relevant to the task. Mixed tasks commonly need several, and the contract or artefact may expose a risk not named below.

## Code and configuration

- Inspect the full diff and surrounding ownership boundaries.
- Check correctness, regressions, security, error handling, compatibility, and unrelated expansion.
- Audit targeted build, test, lint, type, and smoke results. Run a check yourself only when known to be non-mutating.
- Confirm tests drive the shipped path and can fail for the relevant defect.

## Operational and external actions

- Confirm that the target system accepted the action.
- Query resulting state independently: deployment, endpoint, resource, job, branch, PR, release, or configuration.
- Distinguish local preparation from actual submission, push, deploy, publish, or activation.
- Confirm recovery implications for material actions.

## Research and diagnosis

- Check coverage of the full question and comparison criteria.
- Verify facts against primary or authoritative sources and current evidence.
- Separate observation, inference, hypothesis, and recommendation.
- Reject a workaround presented as root cause without causal evidence.

## Documentation and handoff

- Confirm clear responsibility and reading order.
- Preserve durable non-reconstructible knowledge without copying code state.
- Detect parallel authorities, stale handoffs, broken links, contradictory terminology, and unsupported completion claims.
- Verify named artefacts exist and contain promised information.

## Visual and interactive output

- Inspect the rendered artefact or application state at relevant dimensions.
- Check clipping, hierarchy, alignment, legibility, interaction state, and required content.
- If visual driving is unavailable, verify the agreed fallback and mark the real UI path unverified.

## Scope and intent

- Check all follow-up corrections.
- Flag unauthorised adjacent changes, external actions, or deletions.
- Confirm requested language, format, filenames, and delivery path.
