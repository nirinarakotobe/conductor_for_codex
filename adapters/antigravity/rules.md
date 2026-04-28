# Antigravity Conductor Rules

When a repository contains `conductor/`, treat Conductor as the active project workflow.

- Read project context from `conductor/product.md`, `conductor/product-guidelines.md`, `conductor/tech-stack.md`, `conductor/workflow.md`, and `conductor/tracks.md`.
- Resolve paths through Conductor indexes when present.
- Execute only the active track phase unless the user explicitly changes scope.
- Preserve setup, newTrack, implement, status, review, and revert semantics.
- Keep Conductor artifacts visible and tracked.
