# Prism

Prism keeps complex, long-running, multi-objective work aligned with the original request. It keeps priorities and evidence straight, diagnoses causes rather than symptoms, and verifies the real outcome before declaring completion.

## 5 workflows, 1 objective

- **Execute.** Keep long-running work anchored to a stable contract from the first step to verified completion.
- **Diagnose.** Trace stubborn failures to the earliest supported cause instead of stacking fixes on symptoms.
- **Verify.** Audit the real outcome independently against the full request and authoritative evidence.
- **Maintainability.** Find structural problems that make code hard to read, change, audit, or remove, without rewarding abstraction for its own sake.
- **Context.** Carry non-reconstructible state across compaction, handoffs, and sessions without turning documentation into a diary.

## Install

Use `git bash` on Windows or `bash` on macOS/Linux.

```bash
# Install the plugin
codex plugin marketplace add Elypha/prism
codex plugin add prism@elypha

# Install the custom agents (recommended, optional)
curl -fsSL https://raw.githubusercontent.com/Elypha/prism/master/install-agents.sh | bash
```

Done. In a new chat, invoke `$prism:prism` explicitly, or let it trigger automatically when the task fits.

## Update

Use `git bash` on Windows or `bash` on macOS/Linux.

```bash
# Update the plugin
codex plugin marketplace upgrade elypha
codex plugin add prism@elypha

# Update the custom agents, if installed
curl -fsSL https://raw.githubusercontent.com/Elypha/prism/master/install-agents.sh | bash -s -- --force
```

## License

[Apache License 2.0](LICENSE)
