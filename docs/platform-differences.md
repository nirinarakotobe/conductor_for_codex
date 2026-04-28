# Platform Differences

## Behavioral Reference

The original Gemini CLI Conductor repository is the reference for intended lifecycle behavior. The copied source prompts live in `conductor-core/lifecycle/gemini-commands/`.

## Codex

- Uses `AGENTS.md` for always-on repository guidance.
- Uses Codex skills for lifecycle workflows.
- Does not assume native user-defined slash command parity with Gemini CLI.
- Existing root installers remain supported.

## Claude Code

- Uses `CLAUDE.md` for project memory.
- Uses `.claude/skills/<skill>/SKILL.md` for lifecycle workflows.
- Maps closely to Conductor's command lifecycle through skills rather than Gemini extension TOML files.

## Antigravity

- Uses `.agent/workflows/` for lifecycle workflows.
- Uses `.agent/skills/` for bounded specialist roles.
- Antigravity conventions are less firmly standardized in the available reference material, so this adapter is documented as a closest faithful mapping that should be validated against the installed Antigravity version.

## OpenCode

- Uses `AGENTS.md` for repository guidance.
- Uses `.opencode/commands/` for lifecycle commands.
- Uses `.opencode/agents/` for planner, implementer, and reviewer roles.

## Unavoidable Deviations From Gemini CLI

- Gemini slash commands are not universally portable.
- Tool names for asking users, entering plan mode, reading files, and running shell commands differ by platform.
- Adapter prompts may need platform-specific wording, but they must preserve Conductor's setup, track creation, implementation, status, review, and revert semantics.
