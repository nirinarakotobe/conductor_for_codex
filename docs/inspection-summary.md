# Inspection Summary

## Shared Conductor Core

- The lifecycle is unchanged: `setup`, `newTrack`, `implement`, `status`, `review`, and `revert`.
- The `conductor/` artifact model remains the shared project state.
- The Universal File Resolution Protocol from the original Gemini CLI implementation is preserved in `conductor-core/context/GEMINI.md`.
- The original Gemini command prompts are preserved in `conductor-core/lifecycle/gemini-commands/` for regression checks.
- Shared templates and the skill catalog are available in `conductor-core/templates/` and `conductor-core/skills/`.

## Codex-Specific Pieces

- Root `AGENTS.md` instructs Codex to run `$conductor-status` first.
- Root `skills/` contains Codex skill workflows.
- `conductor_for_codex.sh` and `conductor_for_codex.ps1` install Codex skills and initialize target repositories.
- Codex does not assume Gemini-style user-defined slash command parity.

## Adapter Boundaries

- `adapters/codex/`: mirrors the current working Codex port.
- `adapters/claude/`: maps lifecycle workflows to `CLAUDE.md` and `.claude/skills/`.
- `adapters/antigravity/`: maps lifecycle workflows to `.agent/workflows/`, `.agent/skills/`, and rules.
- `adapters/opencode/`: maps lifecycle workflows to `AGENTS.md`, `.opencode/commands/`, and `.opencode/agents/`.

## Deviations From Original Gemini Design

- Gemini's extension TOML command format is not reused directly outside `conductor-core/lifecycle/gemini-commands/`.
- Platform-specific confirmation and planning tools differ from Gemini's `ask_user` and plan-mode mechanisms.
- Codex remains skill-driven instead of slash-command-driven.
- Antigravity support is a faithful adapter layout but should be validated against the installed Antigravity version.

## Reference Inputs

- Current Codex port in this repository.
- Original Gemini CLI Conductor source at `/Volumes/Extension/Code/Codex-Conductor/conductor`.
- External architectural report at `/Volumes/Extension/Nextcloud/Obsidians/ChatMemories/Projects Inbox/Conductor For Agents/ChatGPT Report.md`.
