#!/usr/bin/env bash
set -euo pipefail

TARGET_ROOT="${1:-$(pwd)}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$TARGET_ROOT/.opencode"
cp -a "$SCRIPT_DIR/AGENTS.md" "$TARGET_ROOT/AGENTS.md"
cp -a "$SCRIPT_DIR/.opencode/commands" "$TARGET_ROOT/.opencode/"
cp -a "$SCRIPT_DIR/.opencode/agents" "$TARGET_ROOT/.opencode/"

echo "Installed Conductor OpenCode adapter into: $TARGET_ROOT"
