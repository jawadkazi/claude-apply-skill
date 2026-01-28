# Root Ventures Application Skill

Apply to Root Ventures positions directly through Claude CLI.

## Usage

After installation, simply run:

```bash
apply-to-root
```

The interactive application wizard will start and collect:
- Your name (required)
- Your email (required)
- LinkedIn profile (optional)
- GitHub username (optional)
- Why Root? What makes you a great fit? (optional)

## How It Works

1. You run `apply-to-root` in your terminal
2. The interactive wizard guides you through the application
3. You provide your name, email, LinkedIn, GitHub, and why you're interested
4. Your application is submitted directly to Attio
5. You receive immediate confirmation

## Example Usage

```bash
$ apply-to-root

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
         🚀 Root Ventures Application System
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Position: Venture Capital Associate
Location: San Francisco

Root Ventures is a deep tech seed fund that invests in
bold engineers building the future.

Let's get your application started!

Your full name: Jane Doe
Your email address: jane@example.com
LinkedIn profile (optional): linkedin.com/in/janedoe
GitHub username (optional): janedoe
Why you're interested: I'm excited about deep tech

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
Submitting your application...
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ Application submitted successfully!
```

## Manual Usage

You can also invoke the skill directly:

```bash
~/.claude/skills/root-ventures-apply/apply.sh \
  --name "Your Name" \
  --email "your@email.com" \
  --linkedin "https://linkedin.com/in/yourprofile" \
  --github "yourgithub" \
  --notes "Why you're interested in Root"
```

## Source Tracking

Applications submitted through this skill are tagged with `source: "Claude Skill"` in Attio.

## Other Ways to Apply

- **Web Terminal**: https://root.vc (type `apply 1`)
- **Email**: hello@root.vc

## About Root Ventures

Root Ventures is a San Francisco-based deep tech seed fund investing in bold engineers building the future.

- Website: https://root.vc
- Twitter: [@rootvc](https://twitter.com/rootvc)
