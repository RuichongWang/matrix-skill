#!/usr/bin/env bash
set -euo pipefail

# Install matrix-skill into ~/.claude/skills
REPO="https://raw.githubusercontent.com/RuichongWang/matrix-skill/main"
SKILL_DIR="$HOME/.claude/skills/matrix"

echo "Installing matrix-skill..."

mkdir -p "$SKILL_DIR"
curl -fsSL "$REPO/.claude/skills/matrix/SKILL.md" -o "$SKILL_DIR/SKILL.md"

echo "Done. Run /matrix <domain> in Claude Code to download any skill."
