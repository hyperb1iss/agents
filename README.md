# Contains Studio AI Agents

**53 Specialized AI Agents** | **9 Departments** | **6-Day Sprint Philosophy**

A comprehensive collection of specialized AI agents designed to accelerate and enhance every aspect of rapid
development. Each agent is an expert in their domain, ready to be invoked when their expertise is needed.

## 📥 Installation

1. **Download this repository:**

   ```bash
   git clone https://github.com/contains-studio/agents.git
   ```

2. **Copy to your Claude Code agents directory:**

   ```bash
   cp -r agents/* ~/.claude/agents/
   ```

   Or manually copy all the agent files to your `~/.claude/agents/` directory.

3. **Restart Claude Code** to load the new agents.

## ⚡ Quick Start

Agents are automatically available in Claude Code. Simply describe your task and the appropriate agent will be
triggered. You can also explicitly request an agent by mentioning their name.

📚 **Learn more:** [Claude Code Sub-Agents Documentation](https://docs.anthropic.com/en/docs/claude-code/sub-agents)

### Example Usage

- "Create a new app for tracking meditation habits" → `rapid-prototyper`
- "What's trending on TikTok that we could build?" → `trend-researcher`
- "Our app reviews are dropping, what's wrong?" → `feedback-synthesizer`
- "Make this loading screen more fun" → `whimsy-injector`
- "I need to rebase my feature branch on main" → `git-wizard`

## 📊 Studio Overview

```
53 Total Agents across 9 Departments

Engineering:     13 agents ████████████████
Design:           6 agents ████████
Marketing:        8 agents ███████████
Product:          4 agents █████
Project Mgmt:     3 agents ████
Studio Ops:       6 agents ████████
Testing:          5 agents ███████
Security:         6 agents ████████
Bonus:            2 agents ███
```

## 🏢 Department Structure

### Engineering Department (13 agents)

**Core Development**

- **rapid-prototyper** - Build MVPs in days, not weeks
- **frontend-developer** - Build blazing-fast user interfaces
- **backend-architect** - Design scalable APIs and server systems
- **mobile-app-builder** - Create native iOS/Android experiences
- **ai-engineer** - Integrate AI/ML features that actually ship

**Infrastructure & Quality**

- **devops-automator** - Deploy continuously without breaking things
- **test-writer-fixer** - Write tests that catch real bugs
- **git-wizard** - Master complex rebases and merge conflicts
- **database-specialist** - Optimize data layers for performance
- **data-engineer** - Build robust data pipelines and analytics

**Developer Experience**

- **devex-engineer** - Make development environments delightful
- **documentation-architect** - Create docs developers actually read
- **third-party-investigator** - Evaluate and integrate external services

### Design Department (6 agents)

- **ui-designer** - Design interfaces developers can actually build
- **ux-researcher** - Turn user insights into product improvements
- **brand-guardian** - Keep visual identity consistent everywhere
- **visual-storyteller** - Create visuals that convert and share
- **whimsy-injector** - Add delight to every interaction
- **accessibility-specialist** - Ensure products work for everyone

### Marketing Department (8 agents)

**Growth & Optimization**

- **growth-hacker** - Find and exploit viral growth loops
- **app-store-optimizer** - Dominate app store search results
- **email-marketing-automator** - Build campaigns that convert

**Social Media Masters**

- **tiktok-strategist** - Create shareable marketing moments
- **instagram-curator** - Master the visual content game
- **twitter-engager** - Ride trends to viral engagement
- **reddit-community-builder** - Win Reddit without being banned
- **content-creator** - Generate content across all platforms

### Product Department (4 agents)

- **trend-researcher** - Identify viral opportunities before they explode
- **feedback-synthesizer** - Transform complaints into features
- **sprint-prioritizer** - Ship maximum value in 6 days
- **competitive-intelligence** - Stay ahead of the competition

### Project Management (3 agents)

- **studio-producer** - Keep teams shipping, not meeting
- **project-shipper** - Launch products that don't crash
- **experiment-tracker** - Data-driven feature validation

### Studio Operations (6 agents)

- **analytics-reporter** - Turn data into actionable insights
- **finance-tracker** - Keep the studio profitable
- **infrastructure-maintainer** - Scale without breaking the bank
- **legal-compliance-checker** - Stay legal while moving fast
- **support-responder** - Turn angry users into advocates
- **cost-optimization** - Minimize expenses, maximize value

### Testing & Quality (5 agents)

- **api-tester** - Ensure APIs work under pressure
- **performance-benchmarker** - Make everything faster
- **test-results-analyzer** - Find patterns in test failures
- **tool-evaluator** - Choose tools that actually help
- **workflow-optimizer** - Eliminate workflow bottlenecks

### Security Department (6 agents)

- **penetration-tester** - Find vulnerabilities before hackers do
- **incident-responder** - Handle security breaches with precision
- **compliance-auditor** - Navigate regulatory requirements
- **security-code-reviewer** - Catch security issues in code
- **threat-hunter** - Proactively identify emerging threats
- **security-architect** - Design secure systems from the ground up

### Bonus Agents (2 agents)

- **studio-coach** - Rally the AI troops to excellence
- **joker** - Lighten the mood with tech humor

## 🎯 Proactive Agents

Some agents trigger automatically in specific contexts:

- **studio-coach** - When complex multi-agent tasks begin or agents need guidance
- **test-writer-fixer** - After implementing features, fixing bugs, or modifying code
- **whimsy-injector** - After UI/UX changes
- **experiment-tracker** - When feature flags are added
- **studio-producer** - When coordinating across multiple teams
- **project-shipper** - When approaching launch milestones

## 💡 Best Practices

1. **Let agents collaborate** - Complex tasks often benefit from multiple specialists
2. **Be specific** - Clear task descriptions help agents perform better
3. **Trust the expertise** - Each agent has deep domain knowledge
4. **Iterate quickly** - Agents support the 6-day sprint philosophy
5. **Batch operations** - Multiple agents can work in parallel

## 🔧 Technical Details

### Agent Anatomy

Each agent includes:

- **name**: Unique identifier (kebab-case)
- **description**: When to use with contextual examples
- **color**: Visual identification in Claude Code
- **tools**: Specific tools the agent can access
- **System prompt**: Detailed expertise and behavioral instructions

### Performance Characteristics

- **Response Time**: Optimized for rapid development cycles
- **Context Efficiency**: Agents use focused context windows
- **Parallel Execution**: Multiple agents can run concurrently
- **State Management**: Agents maintain task continuity

## 📈 Impact Metrics

Track agent effectiveness through:

- **Velocity**: Development speed improvements
- **Quality**: Bug reduction and code coverage
- **Adoption**: Feature usage and retention
- **Efficiency**: Time saved on repetitive tasks
- **Innovation**: New features shipped per sprint

## 🛠️ Creating Custom Agents

### Essential Components

1. **YAML Frontmatter**
   - Unique name and visual color
   - Clear trigger description
   - 3-4 contextual examples
   - Tool access permissions

2. **System Prompt** (500+ words)
   - Expert identity and role
   - Core responsibilities (5-8)
   - Domain expertise details
   - Sprint integration approach
   - Success metrics

3. **Testing Requirements**
   - Trigger validation
   - Tool functionality
   - Output quality
   - Edge case handling
   - Multi-agent coordination

### Agent Template

```markdown
---
name: your-agent-name
description: Use this agent when [scenario]. This agent specializes in [expertise]. Examples:\n\n[examples]
color: agent-color
tools: Tool1, Tool2, Tool3
---

You are a [role] who [primary function]. Your expertise spans [domains].

[Detailed system prompt...]
```

## 🚦 Development Status

- **Production Ready** - 47 agents fully operational
- **Beta Testing** - 4 agents in validation
- **Coming Soon** - 2 agents in development

## 🤝 Contributing

To improve existing agents or suggest new ones:

1. Follow the agent template structure
2. Test with real-world scenarios
3. Document performance improvements
4. Share patterns with the community

## 📜 License

These agents are designed to work with Claude Code and follow the 6-day sprint philosophy pioneered by Contains Studio.

---

**Built for speed. Designed for excellence. Ready to ship.**
