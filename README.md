# BMAD Method - Custom Fork

This is a customized fork of the [BMAD Method](https://github.com/bmad-code-org/BMAD-METHOD) with custom NixOS expert extensions and specialized agent configurations.

## Custom Extensions

### 🎯 NixOS Expert Agent

- **Custom Agent**: `expansion-packs/bmad-nixos-expert/agents/nixos-expert.md`
- **MCP Integration**: Integrates with [MCP-NixOS server](https://github.com/utensils/mcp-nixos) for real-time package/option validation
- **Specialized For**: Flake-based configurations, multi-machine setups, Home Manager optimization
- **Commands**: optimize-config, review-flake, security-review, multi-machine, hardware-config

### 🏗️ Project-Specific Agents

Located in `~/Documents/dev/bmad-agents/` for organized access:

- **bookmark-cleaner**: Market analysis and product enhancement agents
- **nixos-config**: Configuration optimization and security review
- **dotfiles**: Development automation and cross-platform scripting
- **docs**: Documentation strategy and content organization

## Original BMAD Method

The BMAD (Breakthrough Method for Agile AI Driven Development) Method is a universal AI agent framework designed to transform development across various domains through:

1. **Agentic Planning**: Dedicated agents (Analyst, PM, Architect) collaborate to create detailed PRDs and Architecture documents
2. **Context-Engineered Development**: Scrum Master agent transforms plans into hyper-detailed development stories

### Core Agents Available

- `analyst` - Market research & project analysis
- `architect` - System architecture design
- `pm` - Product management & PRDs
- `dev` - Development implementation
- `qa` - Quality assurance & testing
- `sm` - Scrum master coordination

### Ready-to-Use Teams

- `team-fullstack` - Complete development team
- `team-ide-minimal` - Lightweight IDE team
- `team-no-ui` - Backend-only team

## Installation & Usage

### Requirements

- Node.js v20.0.0 or higher

### Quick Start

```bash
# Build agent bundles
npm install
npm run build

# Access agents
# Individual agents: dist/agents/[agent-name].txt
# Teams: dist/teams/[team-name].txt
# Custom NixOS expert: dist/expansion-packs/bmad-nixos-expert/agents/nixos-expert.txt
```

### Custom NixOS Expert Usage

1. Copy `dist/expansion-packs/bmad-nixos-expert/agents/nixos-expert.txt` to your AI platform
2. Use with your NixOS configuration for:
   - Performance optimization
   - Security hardening
   - Multi-machine configuration strategies
   - Home Manager integration improvements

## Project Structure

```
bmad-method/
├── bmad-core/              # Core BMAD framework
├── expansion-packs/        # Extensions and custom agents
│   └── bmad-nixos-expert/  # ← Custom NixOS expert
├── dist/                   # Built agent bundles
└── tools/                  # Build and utility tools
```

## Related Repositories

- **BMAD Agents**: `~/Documents/dev/bmad-agents/` - Organized agent library
- **Original BMAD**: [github.com/bmad-code-org/BMAD-METHOD](https://github.com/bmad-code-org/BMAD-METHOD)
- **MCP-NixOS**: [github.com/utensils/mcp-nixos](https://github.com/utensils/mcp-nixos)

## License

MIT License - See original BMAD Method repository for full license details.

---

_This fork extends BMAD Method with specialized NixOS expertise and project-specific agent configurations for enhanced development workflows._
## Contributing

- Follow Conventional Commits: `type(scope)?: subject`.
- Commit template: repo-local `.commit-template.txt` is configured; `git commit` opens with guidance.
- Shared hooks: global `core.hooksPath` points to `Documents/dev/dotfiles/githooks` (pre-commit secret scan, commit-msg enforcement).

## Review Routing

- CODEOWNERS requests reviews from `@emeraldocean123` on pull requests.
