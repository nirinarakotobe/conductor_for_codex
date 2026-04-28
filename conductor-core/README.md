# Conductor Core

`conductor-core/` contains the platform-neutral Conductor contract used by each adapter in this repository.

The original Gemini CLI Conductor implementation remains the behavioral reference. When adapter wording conflicts with the original lifecycle, prefer the original lifecycle unless the target platform lacks a matching capability.

## Core Responsibilities

- Preserve the project artifact model:
  - `conductor/product.md`
  - `conductor/product-guidelines.md`
  - `conductor/tech-stack.md`
  - `conductor/workflow.md`
  - `conductor/code_styleguides/`
  - `conductor/tracks.md`
  - `conductor/tracks/<track_id>/spec.md`
  - `conductor/tracks/<track_id>/plan.md`
  - `conductor/tracks/<track_id>/metadata.json`
- Preserve the command lifecycle:
  - `setup`
  - `newTrack`
  - `implement`
  - `status`
  - `review`
  - `revert`
- Keep Conductor artifacts visible, tracked, and first-class project files.
- Keep the Universal File Resolution Protocol available to every adapter.

## Contents

- `templates/`: shared workflow and code style guide templates.
- `skills/catalog.md`: shared skill recommendation catalog.
- `lifecycle/gemini-commands/`: original Gemini CLI command prompts copied from the reference implementation for fidelity checks.
- `context/GEMINI.md`: original Conductor context and Universal File Resolution Protocol.
- `policies/conductor.toml`: original policy reference.
- `schema/metadata.schema.json`: portable metadata shape for track adapters and validation.

## Adapter Contract

Each adapter must expose the six lifecycle operations in its native platform mechanism and must read/write the same `conductor/` project artifacts. Adapters may differ in command invocation, tool names, or confirmation UI, but not in lifecycle semantics.
