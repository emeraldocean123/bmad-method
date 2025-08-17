# MCP-NixOS Integration

## Overview

This NixOS expert integrates with the MCP-NixOS server (https://github.com/utensils/mcp-nixos) to provide real-time, accurate NixOS information and prevent AI hallucinations about packages and configurations.

## MCP-NixOS Capabilities

### Package Management

- **Search packages**: Find packages across NixOS repositories
- **Package details**: Get comprehensive package information
- **Version history**: Track package versions over time
- **Dependency analysis**: Understand package relationships

### Configuration Options

- **NixOS options**: Search and explore configuration options
- **Home Manager**: Access Home Manager configuration details
- **macOS (nix-darwin)**: Support for macOS NixOS configurations

### System Information

- **Channel listing**: Available NixOS channels and versions
- **Flake search**: Community flakes discovery
- **Real-time data**: Up-to-date package and option information

## Integration Strategy

### Enhanced Agent Capabilities

When the MCP-NixOS server is available, this agent gains:

1. **Real-time Package Search**
   - Accurate package availability checking
   - Version-specific recommendations
   - Dependency resolution assistance

2. **Configuration Validation**
   - Option existence verification
   - Type checking for configuration values
   - Deprecation warnings and alternatives

3. **Smart Recommendations**
   - Context-aware package suggestions
   - Compatible version recommendations
   - Best practice configurations

### Usage Patterns

#### Package Recommendations

```
User: "I need a text editor for my NixOS config"
Agent: [Uses MCP to search editors] "Based on current packages, I recommend:
- neovim (latest: 0.9.4) - Highly customizable
- vscode (latest: 1.84.2) - GUI editor with extensions
- emacs (latest: 29.1) - Traditional powerful editor"
```

#### Configuration Validation

```
User: "Is this option correct: services.nginx.enable?"
Agent: [Uses MCP to verify] "Yes, services.nginx.enable is valid.
Type: boolean, Default: false
Related options: services.nginx.virtualHosts, services.nginx.package"
```

#### Version Compatibility

```
User: "What version of Python should I use?"
Agent: [Uses MCP for version info] "Current stable options:
- python3 (3.11.6) - Default, recommended
- python310 (3.10.13) - Stable legacy
- python312 (3.12.0) - Latest features"
```

## Setup Instructions

### MCP Server Installation

1. Install the MCP-NixOS server following repository instructions
2. Configure your AI assistant to use the MCP server
3. Verify connection with package search test

### Agent Configuration

This BMAD NixOS expert automatically detects MCP-NixOS availability and enhances responses when available.

### Fallback Behavior

When MCP-NixOS is not available, the agent uses:

- Built-in knowledge base
- General best practices
- Conservative recommendations with disclaimers

## Enhanced Commands

With MCP integration, all commands become more powerful:

### optimize-config (Enhanced)

- Real-time package validation
- Current version recommendations
- Deprecated option detection
- Performance impact analysis

### create-module (Enhanced)

- Option validation during creation
- Package existence verification
- Dependency conflict checking
- Template population with current versions

### review-flake (Enhanced)

- Input validation against available channels
- Package version compatibility checking
- Security advisory integration
- Performance optimization suggestions

## Best Practices with MCP

### Always Verify

- Use MCP to verify package names and options
- Check current versions before recommendations
- Validate configuration syntax

### Stay Current

- Reference latest stable versions
- Provide upgrade paths for outdated packages
- Warn about deprecated options

### Context Awareness

- Consider user's NixOS version
- Recommend compatible packages
- Suggest migration strategies

## Example Enhanced Workflows

### Package Selection Workflow

1. User requests functionality
2. Agent uses MCP to search relevant packages
3. Filters by compatibility and maintenance status
4. Provides ranked recommendations with rationale
5. Includes configuration examples with current versions

### Configuration Review Workflow

1. User provides configuration
2. Agent validates all options via MCP
3. Checks package versions and availability
4. Identifies deprecated or problematic settings
5. Suggests modern alternatives with migration steps

### Performance Optimization Workflow

1. Analyze current configuration
2. Use MCP to check for lighter alternatives
3. Validate performance-related options
4. Recommend optimized package versions
5. Provide measurable improvement estimates

## Error Handling

### MCP Unavailable

- Graceful degradation to built-in knowledge
- Clear communication about limitations
- Suggest manual verification steps

### Network Issues

- Cached fallback information
- Conservative recommendations
- Retry strategies for critical operations

### Rate Limiting

- Intelligent query batching
- Priority-based information requests
- User communication about delays
