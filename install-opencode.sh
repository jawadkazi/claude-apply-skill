#!/bin/bash
# Root Ventures Apply Skill - One-line installer for OpenCode CLI

set -e

SKILL_DIR="$HOME/.opencode/skills/root-ventures-apply"
REPO_URL="https://raw.githubusercontent.com/rootvc/claude-apply-skill/main"

echo ""
echo "🚀 Installing Root Ventures Apply Skill for OpenCode..."
echo ""

# Create skills directory if it doesn't exist
mkdir -p "$SKILL_DIR"

# Download files
echo "📥 Downloading skill files..."
curl -fsSL "$REPO_URL/opencode.yaml" -o "$SKILL_DIR/opencode.yaml"
curl -fsSL "$REPO_URL/apply.sh" -o "$SKILL_DIR/apply.sh"
curl -fsSL "$REPO_URL/README.md" -o "$SKILL_DIR/README.md"

# Make apply.sh executable
chmod +x "$SKILL_DIR/apply.sh"

echo ""
echo "✅ Root Ventures Apply Skill installed successfully for OpenCode!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "  Launching OpenCode..."
echo ""
echo "  Once OpenCode opens, just say:"
echo "  'I want to apply to Root Ventures'"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Check if OpenCode CLI is installed
OPENCODE_CMD=""

if command -v opencode &> /dev/null; then
  OPENCODE_CMD="opencode"
fi

if [ -z "$OPENCODE_CMD" ]; then
  echo "⚠️  OpenCode CLI not found in PATH."
  echo ""
  echo "Please ensure OpenCode is installed and try:"
  echo "  opencode skill add root-ventures-apply $SKILL_DIR"
  echo ""
  exit 1
fi

# Launch OpenCode with skill loaded
sleep 1
echo "Skill installed at: $SKILL_DIR"
echo "You can now use it by saying 'I want to apply to Root Ventures' in OpenCode"
