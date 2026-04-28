# OpenCode Adapter

The OpenCode adapter maps Conductor lifecycle operations to `AGENTS.md`, commands, and agents.

## Install Shape

```text
AGENTS.md
.opencode/commands/conductor-setup.md
.opencode/commands/conductor-newTrack.md
.opencode/commands/conductor-implement.md
.opencode/commands/conductor-status.md
.opencode/commands/conductor-review.md
.opencode/commands/conductor-revert.md
.opencode/agents/planner.md
.opencode/agents/implementer.md
.opencode/agents/reviewer.md
```

## Mapping

| Conductor lifecycle | OpenCode entry |
| --- | --- |
| `setup` | `.opencode/commands/conductor-setup.md` |
| `newTrack` | `.opencode/commands/conductor-newTrack.md` |
| `implement` | `.opencode/commands/conductor-implement.md` |
| `status` | `.opencode/commands/conductor-status.md` |
| `review` | `.opencode/commands/conductor-review.md` |
| `revert` | `.opencode/commands/conductor-revert.md` |

## Agents

- `planner.md`: track specification and implementation planning.
- `implementer.md`: active task execution and plan updates.
- `reviewer.md`: completed work review against Conductor artifacts.
