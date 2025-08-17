# Generate Agent Task

## Objective

Create a complete, specialized BMAD agent based on project analysis and domain research.

## Execution Steps

### 1. Agent Specification Design

#### Define Agent Identity

```yaml
agent:
  name: [Descriptive Name]
  id: [unique-id]
  title: [Professional Title]
  customization: [Specific expertise and capabilities]
```

#### Create Persona

```yaml
persona:
  role: [Professional role description]
  style: [Communication style]
  identity: [Detailed identity and experience]
  focus: [Primary focus areas]
  core_principles:
    - [Principle 1]
    - [Principle 2]
    - [Principle 3]
```

### 2. Command Generation

Based on project analysis, create commands for:

#### Development Commands

- `setup-environment` - Initialize development environment
- `run-dev` - Start development server with hot reload
- `run-tests` - Execute test suite with coverage
- `debug-issue` - Interactive debugging assistant

#### Code Quality Commands

- `lint-code` - Run linters and formatters
- `review-pr` - Automated PR review
- `refactor-suggest` - Suggest refactoring opportunities
- `optimize-performance` - Performance analysis and optimization

#### Project-Specific Commands

- `generate-component` - Create new components with templates
- `api-endpoint` - Generate API endpoint boilerplate
- `database-migration` - Create and run migrations
- `deploy-staging` - Deploy to staging environment

### 3. Knowledge Base Creation

#### Framework-Specific Knowledge

```
For React:
- Component lifecycle and hooks
- State management patterns
- Performance optimization techniques
- Testing strategies with Jest/RTL

For Python/Django:
- ORM best practices
- Security middleware configuration
- Async view handling
- Database optimization

For NixOS:
- Flake configuration
- Module system
- Package management
- System optimization
```

#### Best Practices Integration

- Code style guidelines
- Security considerations
- Performance benchmarks
- Testing strategies
- Documentation standards

### 4. MCP Integration Section

```yaml
mcp_integrations:
  required:
    - server: [mcp-server-name]
      purpose: [What it provides]
      tools:
        - [tool-1]: [usage]
        - [tool-2]: [usage]
  optional:
    - server: [mcp-server-name]
      benefit: [Enhancement provided]
```

### 5. Agent Template Structure

````markdown
# [agent-name]

ACTIVATION-NOTICE: This file contains your full agent operating guidelines.

## MCP INTEGRATION

This agent integrates with the following MCP servers for enhanced capabilities:

- **[mcp-server-1]**: [Purpose and benefits]
- **[mcp-server-2]**: [Purpose and benefits]

## COMPLETE AGENT DEFINITION

\```yaml
agent:
name: [Agent Name]
id: [agent-id]
title: [Full Title]
customization: |
[Detailed description of agent's specialized knowledge,
including frameworks, tools, and methodologies]

persona:
role: [Role description]
style: [Communication style]
identity: |
[Detailed background and expertise]
focus: [Primary objectives]
core_principles: - [Principle 1] - [Principle 2] - [Principle 3]

commands:
[command-1]:
task: [task-name]
description: '[What it does]'
[command-2]:
task: [task-name]
description: '[What it does]'

# ... more commands

dependencies:
templates: - [template-1] - [template-2]
tasks: - [task-1] - [task-2]
checklists: - [checklist-1]
data: - [data-source-1]
\```

## Available Commands

[List and describe all commands]

## Specialized Knowledge

### [Technology/Framework] Expertise

[Detailed knowledge specific to the project]

### Best Practices

[Industry standards and conventions]

### Common Patterns

[Frequently used patterns in this domain]

## Workflow Integration

### Development Workflow

[How the agent fits into dev workflow]

### CI/CD Integration

[How agent helps with deployment]

### Testing Strategy

[Testing approach and automation]
````

### 5. Validation Checklist

Before finalizing the agent:

- [ ] Agent has clear, specific identity
- [ ] Commands cover all major workflows
- [ ] Knowledge base includes project-specific details
- [ ] Best practices are incorporated
- [ ] Agent can handle common tasks autonomously
- [ ] Documentation is clear and comprehensive
- [ ] Agent follows BMAD format exactly
- [ ] Commands are actionable and specific
- [ ] Dependencies are properly mapped
- [ ] Persona aligns with project needs

### 6. Enhancement Recommendations

Suggest additional features:

- Integration with external tools
- Custom templates for common tasks
- Automated workflow triggers
- Performance monitoring
- Security scanning
- Documentation generation

## Output

Complete BMAD agent specification ready to be:

1. Saved as `.md` file
2. Built into `.txt` bundle
3. Used immediately in AI assistants
4. Shared with team members
5. Version controlled in repository

## Success Metrics

The generated agent should:

- Reduce development time by 30-50%
- Catch common errors before they occur
- Provide consistent code quality
- Accelerate onboarding for new developers
- Automate repetitive tasks effectively
