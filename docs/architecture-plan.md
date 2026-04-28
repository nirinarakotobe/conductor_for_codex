# Multi-Platform Conductor Architecture Plan

## Goals

- Preserve the original Gemini CLI Conductor lifecycle and artifact model.
- Extract shared, platform-neutral Conductor assets into `conductor-core/`.
- Keep the existing Codex port working through its root `skills/`, `templates/`, and installer scripts.
- Add first-class adapter folders for Codex, Claude Code, Antigravity, and OpenCode.
- Document platform differences instead of hiding them in broad prompts.

## Target Layout

```text
conductor-core/
  README.md
  context/
  lifecycle/
  policies/
  schema/
  skills/
  templates/
adapters/
  codex/
  claude/
  antigravity/
  opencode/
docs/
  architecture-plan.md
  migration.md
  platform-differences.md
```

## Implementation Steps

1. Add `conductor-core/` and seed it from the existing Codex port plus the original Gemini CLI reference.
2. Add adapter directories with platform-native entry points.
3. Keep root Codex files in place for backward compatibility.
4. Update README with installation, usage, support matrix, and limitations.
5. Verify file layout and basic shell syntax for existing installers.
