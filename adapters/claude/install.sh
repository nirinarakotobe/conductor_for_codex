#!/usr/bin/env bash
set -euo pipefail

TARGET_ROOT="${1:-$(pwd)}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$TARGET_ROOT/.claude"
cp -a "$SCRIPT_DIR/CLAUDE.md" "$TARGET_ROOT/CLAUDE.md"
cp -a "$SCRIPT_DIR/.claude/skills" "$TARGET_ROOT/.claude/"

echo "Installed Conductor Claude Code adapter into: $TARGET_ROOT"
