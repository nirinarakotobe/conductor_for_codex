# Antigravity Adapter

The Antigravity adapter maps Conductor lifecycle operations to `.agent` workflows and skills.

## Install Shape

```text
.agent/workflows/conductor-setup.md
.agent/workflows/conductor-newTrack.md
.agent/workflows/conductor-implement.md
.agent/workflows/conductor-status.md
.agent/workflows/conductor-review.md
.agent/workflows/conductor-revert.md
.agent/skills/planner.md
.agent/skills/implementer.md
.agent/skills/reviewer.md
```

## Mapping

| Conductor lifecycle | Antigravity entry |
| --- | --- |
| `setup` | `.agent/workflows/conductor-setup.md` |
| `newTrack` | `.agent/workflows/conductor-newTrack.md` |
| `implement` | `.agent/workflows/conductor-implement.md` |
| `status` | `.agent/workflows/conductor-status.md` |
| `review` | `.agent/workflows/conductor-review.md` |
| `revert` | `.agent/workflows/conductor-revert.md` |

## Known Limitation

Antigravity command, workflow, rule, and skill conventions should be validated against the local Antigravity version. This adapter preserves Conductor behavior through the closest documented workflow/skill structure.
