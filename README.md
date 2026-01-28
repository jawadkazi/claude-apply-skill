# Root Ventures Application Skill

Apply to Root Ventures positions directly through Claude CLI.

## Installation

```bash
curl -fsSL https://raw.githubusercontent.com/rootvc/claude-apply-skill/main/install.sh | bash
```

## Usage

After installation, open Claude CLI and paste this single line:

```
Read ~/.claude/skills/root-ventures-apply/prompt.txt then I want to apply
```

That's it! Claude will:
- Load the application skill
- Guide you through the application
- Collect your information conversationally
- Submit directly to Root Ventures

## What You'll Provide

- Your name (required)
- Your email (required)
- LinkedIn profile (optional)
- GitHub username (optional)
- Why you're interested in Root (optional)

## How It Works

1. You paste the command in Claude CLI
2. Claude reads the skill instructions
3. Claude starts the conversational application process
4. You provide your information naturally
5. Claude submits your application to Attio
6. You receive immediate confirmation

## Example

```
You: Read ~/.claude/skills/root-ventures-apply/prompt.txt then I want to apply

Claude: Great! Root Ventures is looking for a technical associate in SF.
        Let me collect some information. What's your name?

You: Jane Doe

Claude: Thanks Jane! What's your email address?

        [... continues conversationally ...]

Claude: ✅ Application submitted successfully!
```

## Source Tracking

Applications submitted through this skill are tagged with `source: "Claude Skill"` in Attio, and "Applied using claude skill" is added to your notes.

## Other Ways to Apply

- **Web Terminal**: https://root.vc (type `apply 1`)
- **Email**: hello@root.vc

## About Root Ventures

Root Ventures is a San Francisco-based deep tech seed fund investing in bold engineers building the future.

- Website: https://root.vc
- Twitter: [@rootvc](https://twitter.com/rootvc)
