# Conductor for Models

Conductor for Models is a multi-platform port of the original Gemini CLI Conductor project.

It preserves Conductor's context-driven lifecycle and artifact model while adapting the integration layer for:

- Codex
- Claude Code
- Antigravity
- OpenCode

The original Gemini CLI Conductor implementation remains the behavioral reference. When there is a conflict between adapter wording and the original lifecycle, prefer the original lifecycle unless the target platform cannot support it directly.

## Start Here

If you are new to Conductor, read [`what_is_conductor.md`](what_is_conductor.md).

For migration context, read [`docs/migration.md`](docs/migration.md).

For the initial comparison summary, read [`docs/inspection-summary.md`](docs/inspection-summary.md).

## Architecture

```text
conductor-core/
  context/                  # Original Conductor context and file resolution rules
  lifecycle/gemini-commands/ # Original Gemini command prompts for fidelity checks
  policies/                 # Original Conductor policy reference
  schema/                   # Portable track metadata schema
  skills/                   # Shared skill catalog
  templates/                # Shared workflow and code style templates
adapters/
  codex/                    # Codex skills, AGENTS guidance, installers
  claude/                   # CLAUDE.md and Claude Code skills
  antigravity/              # .agent workflows, skills, and rules
  opencode/                 # AGENTS.md, commands, and agents
skills/                     # Backward-compatible root Codex skills
templates/                  # Backward-compatible root shared templates
```

`conductor-core/` is the shared contract. Each adapter provides a platform-native way to run the same lifecycle:

1. `setup`
2. `newTrack`
3. `implement`
4. `status`
5. `review`
6. `revert`

## Conductor Artifacts

Conductor state lives in normal project files:

```text
conductor/
  index.md
  product.md
  product-guidelines.md
  tech-stack.md
  workflow.md
  tracks.md
  code_styleguides/
  tracks/
    <track_id>/
      index.md
      spec.md
      plan.md
      metadata.json
```

Do not add `conductor/` to ignore rules by default. These artifacts are part of the project workflow and may be tracked.

## Support Matrix

| Platform | Status | Native mapping | Notes |
| --- | --- | --- | --- |
| Codex | Supported | `AGENTS.md`, skills, installers | Existing root Codex path remains compatible. |
| Claude Code | Adapter added | `CLAUDE.md`, `.claude/skills/` | Close lifecycle fit through skills. |
| Antigravity | Adapter added | `.agent/workflows/`, `.agent/skills/`, rules | Validate against the installed Antigravity version. |
| OpenCode | Adapter added | `AGENTS.md`, `.opencode/commands/`, `.opencode/agents/` | Strong command/agent mapping. |

See [`docs/platform-differences.md`](docs/platform-differences.md) for known limitations.

## Codex Installation

The original Codex install flow is preserved.

### macOS and Linux

```bash
bash ./conductor_for_codex.sh
```

Then initialize any target repository:

```bash
codex_conductor_init
```

### Windows

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\conductor_for_codex.ps1
```

Then initialize any target repository:

```powershell
codex_conductor_init.cmd
```

Codex repo initialization creates or updates:

- `.codex/skills/<skill>/SKILL.md`
- `conductor/templates/...`
- `conductor/skills/catalog.md`
- `AGENTS.md` with the required status rule

It leaves `.gitignore` unchanged.

## Claude Code Installation

Copy the Claude adapter files into the target repository:

```bash
bash adapters/claude/install.sh /path/to/target-repo
```

Equivalent manual layout:

```text
adapters/claude/CLAUDE.md -> CLAUDE.md
adapters/claude/.claude/skills/ -> .claude/skills/
```

Use the lifecycle skills:

- `conductor-setup`
- `conductor-newTrack`
- `conductor-implement`
- `conductor-status`
- `conductor-review`
- `conductor-revert`

## Antigravity Installation

Copy the Antigravity adapter files into the target repository:

```bash
bash adapters/antigravity/install.sh /path/to/target-repo
```

Equivalent manual layout:

```text
adapters/antigravity/.agent/ -> .agent/
adapters/antigravity/rules.md -> your Antigravity rule location
```

Use the workflow files under `.agent/workflows/` for the six Conductor lifecycle operations. The Antigravity adapter is intentionally conservative because workflow and rule conventions should be checked against the local Antigravity release.

## OpenCode Installation

Copy the OpenCode adapter files into the target repository:

```bash
bash adapters/opencode/install.sh /path/to/target-repo
```

Equivalent manual layout:

```text
adapters/opencode/AGENTS.md -> AGENTS.md
adapters/opencode/.opencode/commands/ -> .opencode/commands/
adapters/opencode/.opencode/agents/ -> .opencode/agents/
```

Use the `conductor-*` commands for lifecycle operations and the planner, implementer, and reviewer agents for bounded specialist work.

## Shared Core Development

When updating Conductor behavior:

1. Compare against `conductor-core/lifecycle/gemini-commands/`.
2. Update shared templates or schemas under `conductor-core/`.
3. Reflect platform-specific changes only in the affected adapter.
4. Keep root Codex files compatible unless a migration note explicitly says otherwise.

## Existing Codex Layout

The root-level Codex assets remain for compatibility:

```text
skills/
templates/
conductor_for_codex.sh
conductor_for_codex.ps1
```

The same assets are mirrored in `adapters/codex/` to make the new adapter structure explicit.

## Legal

License: [Apache License 2.0](LICENSE)
