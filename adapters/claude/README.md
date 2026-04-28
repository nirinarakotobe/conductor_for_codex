# Claude Code Adapter

The Claude Code adapter maps Conductor lifecycle operations to project memory plus skills.

## Install Shape

Copy or sync these files into a Claude Code project:

```text
CLAUDE.md
.claude/skills/conductor-setup/SKILL.md
.claude/skills/conductor-newTrack/SKILL.md
.claude/skills/conductor-implement/SKILL.md
.claude/skills/conductor-status/SKILL.md
.claude/skills/conductor-review/SKILL.md
.claude/skills/conductor-revert/SKILL.md
```

## Mapping

| Conductor lifecycle | Claude Code entry |
| --- | --- |
| `setup` | `.claude/skills/conductor-setup/SKILL.md` |
| `newTrack` | `.claude/skills/conductor-newTrack/SKILL.md` |
| `implement` | `.claude/skills/conductor-implement/SKILL.md` |
| `status` | `.claude/skills/conductor-status/SKILL.md` |
| `review` | `.claude/skills/conductor-review/SKILL.md` |
| `revert` | `.claude/skills/conductor-revert/SKILL.md` |

## Notes

The skill files are adapted from the Codex port and preserve the shared `conductor/` artifact model. Invocation syntax may vary by Claude Code version.
