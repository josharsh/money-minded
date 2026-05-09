#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="$HOME/.claude/skills/money-minded"
SOURCE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "Installing Money-Minded skill..."

mkdir -p "$SKILL_DIR"
cp "$SOURCE_DIR/skills/money-minded/SKILL.md" "$SKILL_DIR/SKILL.md"

echo ""
echo "Installed successfully!"
echo ""
echo "Usage:"
echo "  /money-minded                — full commercial evaluation of an idea"
echo "  /money-minded scan           — scan project for monetization opportunities"
echo "  /money-minded rip            — pure adversarial: find every reason this fails"
echo "  /money-minded unit-economics — just the numbers: TAM, CAC, LTV, margins"
echo ""
echo "Skill is installed at: $SKILL_DIR/SKILL.md"
