#!/bin/bash
# Root Ventures Apply Skill - One-line installer for Claude CLI

set -e

SKILL_DIR="$HOME/.claude/skills/root-ventures-apply"
REPO_URL="https://raw.githubusercontent.com/rootvc/claude-apply-skill/main"

echo ""
echo "🚀 Installing Root Ventures Apply Skill..."
echo ""

# Create skills directory if it doesn't exist
mkdir -p "$SKILL_DIR"

# Download files
echo "📥 Downloading skill files..."
curl -fsSL "$REPO_URL/skill.json" -o "$SKILL_DIR/skill.json"
curl -fsSL "$REPO_URL/prompt.txt" -o "$SKILL_DIR/prompt.txt"
curl -fsSL "$REPO_URL/apply.sh" -o "$SKILL_DIR/apply.sh"
curl -fsSL "$REPO_URL/README.md" -o "$SKILL_DIR/README.md"

# Download wrapper command
curl -fsSL "$REPO_URL/apply-to-root" -o "$SKILL_DIR/apply-to-root"

# Make scripts executable
chmod +x "$SKILL_DIR/apply.sh"
chmod +x "$SKILL_DIR/apply-to-root"

# Install command to PATH
echo "📦 Installing command..."
mkdir -p "$HOME/.local/bin"
ln -sf "$SKILL_DIR/apply-to-root" "$HOME/.local/bin/apply-to-root"

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
  echo ""
  echo "⚠️  Adding ~/.local/bin to your PATH..."
  echo ""

  # Detect shell and add to appropriate rc file
  if [[ -n "$ZSH_VERSION" ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.zshrc"
    echo "Added to ~/.zshrc"
  elif [[ -n "$BASH_VERSION" ]]; then
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$HOME/.bashrc"
    echo "Added to ~/.bashrc"
  fi
fi

echo ""
echo "✅ Root Ventures Apply Skill installed successfully!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Usage:"
echo ""
echo "  Just run this command:"
echo ""
echo "    apply-to-root"
echo ""
echo "  That's it! The application wizard will start."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "💡 Tip: You may need to restart your terminal first"
echo ""
echo "Learn more: https://root.vc"
echo ""
