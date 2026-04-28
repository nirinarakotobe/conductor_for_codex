#!/usr/bin/env bash
set -euo pipefail

TARGET_ROOT="${1:-$(pwd)}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$TARGET_ROOT/.agent"
cp -a "$SCRIPT_DIR/.agent/workflows" "$TARGET_ROOT/.agent/"
cp -a "$SCRIPT_DIR/.agent/skills" "$TARGET_ROOT/.agent/"
cp -a "$SCRIPT_DIR/rules.md" "$TARGET_ROOT/.agent/conductor-rules.md"

echo "Installed Conductor Antigravity adapter into: $TARGET_ROOT"
