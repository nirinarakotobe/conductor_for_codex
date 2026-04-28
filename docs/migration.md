# Migration Note

This repository started as a Codex-oriented port of the Gemini CLI Conductor extension. It now has a multi-platform layout.

## What Changed

- Shared Conductor assets are now collected under `conductor-core/`.
- The existing Codex implementation remains at the repository root and is also mirrored under `adapters/codex/`.
- Claude Code, Antigravity, and OpenCode adapter folders have been added with platform-native command, workflow, skill, rule, or agent entry points.
- Documentation now treats Gemini CLI Conductor as the behavioral reference rather than treating Codex as the only supported target.

## Compatibility

Existing Codex usage is preserved:

- `conductor_for_codex.sh` and `conductor_for_codex.ps1` remain at the root.
- Root `skills/` and `templates/` remain in place.
- Repo initialization still installs `.codex/skills/...`, `conductor/templates/...`, `conductor/skills/catalog.md`, and the `AGENTS.md` status rule.

## Porting Rule

When a platform has no direct equivalent to a Gemini CLI feature, the adapter should implement the closest faithful native mechanism and document the gap. It should not alter the shared `conductor/` artifact model.
