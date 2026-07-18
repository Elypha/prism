# Recovery and Checkpoints

## Repeated failure

Treat repeated identical failure as evidence, not a reason to replay the same action.

- Preserve the exact error and the state that produced it.
- Locate the first point where observation diverges from expectation and identify the assumption it disproves.
- Choose a materially different action that can produce new information.
- Use a read-only strategist when the plan itself needs redesign.

Do not mark work blocked merely because it is slow or difficult. A real blocker requires a stable external condition, missing authority, contradiction, or repeatedly confirmed inability to proceed safely.

## Context pressure

- Maintain a compact objective, amendments, decisions, evidence, current frontier, and unresolved gates continuously; refresh it before known compaction or handoff boundaries.
- Do not dump transcripts into permanent documents.
- On resume, recover the contract and frontier before acting, then re-read current guidance and verify drift-prone state.
- Treat surviving summaries as lossy. Resolve material gaps from authorised authoritative sources or ask one focused question; do not silently guess.
- Keep temporary handoff state distinct from durable decisions, then absorb it through a validated authorised consolidation.

## Safe checkpoint policy

Managed worktrees are the preferred isolation boundary for risky or autonomous changes.

Do not implement turn-level rewind in a shared dirty checkout by automatically stashing, committing user work, resetting files, or copying broad directories.

Any future checkpoint mechanism must:

- store data outside the working tree;
- record repository identity, worktree path, HEAD, and capture time;
- preserve tracked edits, staged state, deletions, renames, and untracked files;
- avoid changing the index, worktree, branch, or stash stack during capture;
- isolate namespaces per worktree and task;
- validate restoration targets;
- preview the restore diff and require confirmation for destructive replacement;
- retain an audit manifest and bounded cleanup policy.

Until then, rely on managed worktrees, normal Git history, narrow recoverable edits, and explicit user-approved recovery.
