# Codex Adapter

The Codex adapter is the original working port preserved for backward compatibility.

## Entry Points

- Root installer scripts:
  - `conductor_for_codex.sh`
  - `conductor_for_codex.ps1`
- Mirrored installer copies:
  - `adapters/codex/installers/conductor_for_codex.sh`
  - `adapters/codex/installers/conductor_for_codex.ps1`
- Skills:
  - `adapters/codex/skills/conductor-setup/SKILL.md`
  - `adapters/codex/skills/conductor-newTrack/SKILL.md`
  - `adapters/codex/skills/conductor-implement/SKILL.md`
  - `adapters/codex/skills/conductor-status/SKILL.md`
  - `adapters/codex/skills/conductor-review/SKILL.md`
  - `adapters/codex/skills/conductor-revert/SKILL.md`

## Mapping

Codex does not rely on Gemini-style user-defined slash commands. It maps Conductor lifecycle operations to Codex skills and repository guidance in `AGENTS.md`.

## Compatibility

The root Codex files remain canonical for existing users. The adapter copy exists to make the multi-platform layout explicit and reviewable.
