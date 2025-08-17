# Setup Roo Code Task

## Objective

Install, configure, and optimize Roo Code for maximum development productivity.

## Execution Steps

### 1. Prerequisites Check

```bash
# Verify Node.js version (20.19.2+ required)
node --version

# Verify pnpm installation
pnpm --version

# Ensure VS Code is installed and updated
code --version
```

### 2. Roo Code Installation

#### Option A: VS Code Marketplace

```
1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search "Roo Code"
4. Click Install on official Roo Code extension
```

#### Option B: Manual VSIX Installation

```bash
# Download latest release from GitHub
# https://github.com/RooCodeInc/Roo-Code/releases

# Install via command line
code --install-extension roo-code-latest.vsix
```

#### Option C: Development Setup

```bash
# Clone repository for development
git clone https://github.com/RooCodeInc/Roo-Code.git
cd Roo-Code

# Install dependencies
pnpm install

# Build project
pnpm build

# Run in development mode (F5 in VS Code)
```

### 3. Initial Configuration

#### AI Model Setup

```yaml
configuration_options:
  providers:
    - OpenAI (GPT-4, GPT-3.5)
    - Anthropic (Claude)
    - Local models (Ollama, etc.)
    - Custom API endpoints

  setup_steps: 1. Open Roo Code settings in VS Code
    2. Configure API keys for chosen provider(s)
    3. Set default model preferences
    4. Test connection and response quality
```

#### Basic Settings

```json
{
  "rooCode.defaultMode": "code",
  "rooCode.autoApproval": false,
  "rooCode.customInstructions": "",
  "rooCode.maxTokens": 4096,
  "rooCode.temperature": 0.1
}
```

### 4. Mode Configuration

#### Code Mode Setup

```yaml
code_mode:
  purpose: General-purpose coding tasks
  settings:
    - Focus on clean, readable code
    - Follow project conventions
    - Include comprehensive comments
    - Suggest optimizations
```

#### Architect Mode Setup

```yaml
architect_mode:
  purpose: Technical planning and design
  settings:
    - High-level system thinking
    - Documentation focus
    - Scalability considerations
    - Best practice recommendations
```

#### Debug Mode Setup

```yaml
debug_mode:
  purpose: Systematic problem diagnosis
  settings:
    - Methodical approach
    - Data gathering focus
    - Hypothesis-driven investigation
    - Clear solution explanations
```

#### Ask Mode Setup

```yaml
ask_mode:
  purpose: Information and guidance
  settings:
    - Detailed explanations
    - Multiple perspective analysis
    - Learning-focused responses
    - Follow-up suggestions
```

### 5. Custom Instructions

#### Project-Specific Instructions

```
Create custom instructions for your project:

1. Coding standards and style guides
2. Framework-specific patterns
3. Security requirements
4. Performance considerations
5. Documentation standards
```

#### Team Instructions

```
Establish team-wide instructions:

1. Consistent code formatting
2. Naming conventions
3. Architecture patterns
4. Review processes
5. Deployment procedures
```

### 6. MCP Integration Setup

#### Core MCP Servers

```bash
# Install essential MCP servers
npm install -g @modelcontextprotocol/mcp-git
npm install -g @modelcontextprotocol/mcp-vscode
npm install -g @modelcontextprotocol/mcp-http
```

#### Configure MCP in Roo Code

```json
{
  "mcp": {
    "servers": {
      "git": {
        "command": "mcp-git",
        "args": ["--port", "3001"]
      },
      "vscode": {
        "command": "mcp-vscode",
        "args": ["--port", "3002"]
      },
      "http": {
        "command": "mcp-http",
        "args": ["--port", "3003"]
      }
    }
  }
}
```

### 7. Performance Optimization

#### Memory Management

```yaml
optimization_settings:
  context_management:
    - Limit context window size
    - Clear unnecessary history
    - Use focused prompts

  response_optimization:
    - Adjust temperature settings
    - Configure max tokens appropriately
    - Use streaming responses
```

#### Caching Configuration

```yaml
caching_strategy:
  local_cache:
    - Enable response caching
    - Configure cache size limits
    - Set cache expiration times

  model_optimization:
    - Use appropriate model sizes
    - Configure batch processing
    - Implement smart retries
```

### 8. Testing and Validation

#### Functionality Tests

```
Test each mode:
1. Code Mode: Generate a simple function
2. Architect Mode: Design a small system
3. Ask Mode: Request explanation of concept
4. Debug Mode: Analyze a simple bug
```

#### Integration Tests

```
Test MCP integrations:
1. Git operations through MCP
2. VS Code commands via MCP
3. HTTP requests through MCP
4. Custom tool integrations
```

### 9. Backup and Recovery

#### Configuration Backup

```bash
# Backup VS Code settings
cp ~/.config/Code/User/settings.json ./roo-code-backup/
cp ~/.vscode/extensions/roo-code-*/package.json ./roo-code-backup/

# Document custom configurations
# Save API keys securely
# Export custom instructions
```

#### Recovery Procedures

```yaml
recovery_steps:
  configuration_loss: 1. Restore from backup files
    2. Reconfigure API keys
    3. Validate all modes
    4. Test MCP connections

  extension_issues: 1. Uninstall and reinstall extension
    2. Clear VS Code cache
    3. Restore configurations
    4. Validate functionality
```

### 10. Documentation

#### Setup Documentation

```markdown
Document your setup:

- Configuration choices and reasoning
- Custom instructions and their purposes
- MCP server configurations
- Performance optimization settings
- Troubleshooting procedures
```

#### Team Onboarding

```markdown
Create onboarding guide:

- Installation procedures
- Configuration standards
- Usage examples
- Best practices
- Support resources
```

## Validation Checklist

- [ ] Roo Code extension installed and activated
- [ ] AI model provider configured and tested
- [ ] All four modes (Code, Architect, Ask, Debug) functional
- [ ] Custom instructions configured for project
- [ ] Essential MCP servers installed and working
- [ ] Performance settings optimized
- [ ] Team standards documented
- [ ] Backup procedures established
- [ ] Testing completed successfully
- [ ] Documentation created and shared

## Success Metrics

### Technical Metrics

- Installation time under 30 minutes
- All modes responding within 5 seconds
- MCP integrations working without errors
- Performance meeting team requirements

### Productivity Metrics

- Reduced time for common coding tasks
- Improved code quality and consistency
- Enhanced debugging efficiency
- Better architectural decision making

## Troubleshooting

### Common Issues

1. **API Key Problems**: Verify keys, check permissions, test connections
2. **Performance Issues**: Adjust settings, optimize context, check network
3. **MCP Failures**: Validate server installation, check configuration, test individually
4. **Mode Switching**: Clear cache, restart VS Code, verify extension status

### Advanced Troubleshooting

- Enable debug logging for detailed error analysis
- Check VS Code developer console for errors
- Validate MCP server logs
- Test with minimal configuration to isolate issues
