# Create Custom Mode Task

## Objective

Design and implement custom Roo Code modes for specialized development tasks and workflows.

## Custom Mode Fundamentals

### What are Custom Modes?

Custom modes in Roo Code are specialized AI personas designed for specific tasks:

- **Security Auditor**: Focus on security vulnerabilities and best practices
- **Performance Optimizer**: Specialized in code optimization and profiling
- **Documentation Writer**: Expert in technical documentation and API docs
- **Code Reviewer**: Systematic code review with quality focus
- **DevOps Engineer**: Deployment, infrastructure, and automation focus

### Mode Components

```yaml
custom_mode_structure:
  persona:
    role: Specific professional role
    expertise: Domain knowledge areas
    style: Communication and approach style

  instructions:
    primary_focus: Main objectives
    constraints: Limitations and boundaries
    methodologies: Preferred approaches

  capabilities:
    tools: Available tools and integrations
    workflows: Standard operating procedures
    outputs: Expected deliverable formats
```

## Execution Steps

### 1. Mode Design Phase

#### Identify Requirements

```yaml
requirements_analysis:
  target_tasks:
    - What specific tasks will this mode handle?
    - What expertise is required?
    - What are the success criteria?

  user_needs:
    - Who will use this mode?
    - What are their skill levels?
    - What outcomes do they expect?

  integration_points:
    - What tools need integration?
    - What data sources are required?
    - What output formats are needed?
```

#### Define Mode Persona

```yaml
persona_template:
  name: '[Mode Name]'
  role: '[Professional Role]'
  expertise_areas:
    - '[Domain 1]'
    - '[Domain 2]'
    - '[Domain 3]'

  communication_style:
    tone: '[Professional/Casual/Technical]'
    detail_level: '[High/Medium/Low]'
    approach: '[Methodical/Creative/Analytical]'

  specializations:
    - '[Specific skill 1]'
    - '[Specific skill 2]'
    - '[Specific skill 3]'
```

### 2. Instruction Development

#### Core Instructions Template

```markdown
## [Mode Name] Instructions

### Primary Role

You are a [specific role] with [X years] of experience in [domain].

### Expertise Areas

- [Expertise area 1]: [Specific knowledge and capabilities]
- [Expertise area 2]: [Specific knowledge and capabilities]
- [Expertise area 3]: [Specific knowledge and capabilities]

### Approach and Methodology

1. [Step 1 of your methodology]
2. [Step 2 of your methodology]
3. [Step 3 of your methodology]

### Communication Style

- Use [specific communication style]
- Focus on [specific aspects]
- Provide [type of outputs]

### Tools and Integrations

- Utilize [specific tools]
- Integrate with [specific systems]
- Output in [specific formats]

### Quality Standards

- [Quality criterion 1]
- [Quality criterion 2]
- [Quality criterion 3]
```

#### Example: Security Auditor Mode

```markdown
## Security Auditor Instructions

### Primary Role

You are a senior cybersecurity specialist with 10+ years of experience in application security, penetration testing, and secure code review.

### Expertise Areas

- OWASP Top 10 vulnerabilities and mitigation strategies
- Secure coding practices across multiple languages
- Authentication and authorization systems
- Cryptography implementation and best practices
- Security testing methodologies

### Approach and Methodology

1. Systematic security analysis following OWASP guidelines
2. Risk-based assessment with severity classification
3. Actionable remediation recommendations
4. Compliance verification against security standards

### Communication Style

- Use clear, security-focused language
- Focus on risk impact and business consequences
- Provide specific, actionable remediation steps
- Include relevant security standards and references

### Tools and Integrations

- Utilize static analysis tools via MCP
- Integrate with security scanning APIs
- Output in security report formats (JSON, SARIF)

### Quality Standards

- All findings must include CVSS scores
- Remediation steps must be specific and testable
- Risk assessment must consider business context
```

### 3. MCP Integration Configuration

#### Identify Required MCP Servers

```yaml
mcp_requirements:
  security_mode:
    - mcp-security-scanner: For automated vulnerability scanning
    - mcp-sonarqube: For code quality and security analysis
    - mcp-snyk: For dependency vulnerability checking

  performance_mode:
    - mcp-profiler: For performance profiling
    - mcp-lighthouse: For web performance analysis
    - mcp-k6: For load testing integration

  documentation_mode:
    - mcp-jsdoc: For API documentation generation
    - mcp-swagger: For OpenAPI specification
    - mcp-confluence: For knowledge base integration
```

#### Configure MCP Connections

```json
{
  "customMode": {
    "securityAuditor": {
      "mcpServers": [
        {
          "name": "security-scanner",
          "endpoint": "http://localhost:3010",
          "capabilities": ["scan", "report", "remediate"]
        },
        {
          "name": "sonarqube",
          "endpoint": "http://localhost:3011",
          "capabilities": ["analyze", "quality-gate", "metrics"]
        }
      ]
    }
  }
}
```

### 4. Mode Implementation

#### Create Mode Configuration

```yaml
mode_configuration:
  mode_id: 'security-auditor'
  display_name: 'Security Auditor'
  description: 'Comprehensive security analysis and vulnerability assessment'
  icon: 'shield'

  activation_keywords:
    - 'security review'
    - 'vulnerability scan'
    - 'security audit'
    - 'penetration test'

  default_settings:
    max_tokens: 8192
    temperature: 0.1
    top_p: 0.95
```

#### Implement Mode Logic

```typescript
// Example custom mode implementation
export class SecurityAuditorMode implements CustomMode {
  name = 'security-auditor';
  description = 'Security analysis and vulnerability assessment';

  async process(input: string, context: ModeContext): Promise<ModeResponse> {
    // 1. Analyze input for security-related tasks
    const analysisType = this.detectAnalysisType(input);

    // 2. Apply security-specific processing
    switch (analysisType) {
      case 'code-review':
        return await this.performCodeSecurityReview(input, context);
      case 'vulnerability-scan':
        return await this.performVulnerabilityScanning(input, context);
      case 'architecture-review':
        return await this.performArchitectureReview(input, context);
      default:
        return await this.performGeneralSecurityAnalysis(input, context);
    }
  }

  private async performCodeSecurityReview(code: string, context: ModeContext) {
    // Implement security-focused code review logic
    // Integrate with MCP security tools
    // Return structured security assessment
  }
}
```

### 5. Testing and Validation

#### Functional Testing

```yaml
test_scenarios:
  basic_functionality:
    - Mode activation and deactivation
    - Instruction following accuracy
    - Output format consistency

  specialized_tasks:
    - Domain-specific task execution
    - Tool integration functionality
    - Quality of specialized outputs

  integration_testing:
    - MCP server communication
    - Error handling and recovery
    - Performance under load
```

#### Quality Validation

```yaml
quality_metrics:
  accuracy:
    - Task completion rate
    - Output correctness
    - Domain expertise demonstration

  consistency:
    - Response format standardization
    - Approach methodology adherence
    - Communication style maintenance

  performance:
    - Response time metrics
    - Resource utilization
    - Scalability testing
```

### 6. Documentation and Training

#### Mode Documentation

```markdown
# [Mode Name] Documentation

## Overview

[Brief description of mode purpose and capabilities]

## Usage Examples

[Specific examples of how to use the mode]

## Configuration Options

[Available settings and customizations]

## Integration Points

[MCP servers and tool integrations]

## Best Practices

[Recommended usage patterns and tips]

## Troubleshooting

[Common issues and solutions]
```

#### User Training Materials

```yaml
training_materials:
  quick_start_guide:
    - Mode activation instructions
    - Basic usage examples
    - Common commands and patterns

  advanced_usage:
    - Complex workflow examples
    - Integration configurations
    - Customization options

  troubleshooting:
    - Common error scenarios
    - Debug procedures
    - Support resources
```

### 7. Deployment and Distribution

#### Mode Packaging

```yaml
packaging_structure:
  mode_definition:
    - Mode configuration files
    - Instruction templates
    - Example interactions

  integration_configs:
    - MCP server configurations
    - Tool integration settings
    - API connection templates

  documentation:
    - User guides
    - API documentation
    - Troubleshooting guides
```

#### Distribution Methods

```yaml
distribution_options:
  team_sharing:
    - Internal repository storage
    - Configuration management
    - Version control integration

  community_sharing:
    - Public mode repositories
    - Community contributions
    - Collaborative improvement

  marketplace:
    - Official mode marketplace
    - Peer review process
    - Quality certification
```

## Example Custom Modes

### 1. Performance Optimizer Mode

```yaml
performance_optimizer:
  focus: Code and system performance optimization
  expertise:
    - Profiling and benchmarking
    - Algorithm optimization
    - Resource utilization analysis
    - Caching strategies

  tools:
    - Performance profilers
    - Benchmark suites
    - Memory analyzers
    - Load testing tools
```

### 2. API Designer Mode

```yaml
api_designer:
  focus: RESTful API design and documentation
  expertise:
    - OpenAPI specification
    - REST best practices
    - Authentication patterns
    - API versioning strategies

  tools:
    - OpenAPI generators
    - API testing tools
    - Documentation platforms
    - Mock servers
```

### 3. Database Architect Mode

```yaml
database_architect:
  focus: Database design and optimization
  expertise:
    - Schema design
    - Query optimization
    - Indexing strategies
    - Data modeling

  tools:
    - Database profilers
    - Migration tools
    - ERD generators
    - Query analyzers
```

## Success Criteria

### Technical Success

- [ ] Mode responds accurately to domain-specific queries
- [ ] Integrations work seamlessly with required tools
- [ ] Performance meets team requirements
- [ ] Error handling is robust and informative

### User Success

- [ ] Users can easily activate and use the mode
- [ ] Output quality meets professional standards
- [ ] Workflow integration is smooth and intuitive
- [ ] Documentation is clear and comprehensive

### Business Success

- [ ] Mode improves productivity for target tasks
- [ ] Quality of outputs meets business requirements
- [ ] Adoption rate among team members is high
- [ ] ROI demonstrates value of custom mode investment

## Maintenance and Evolution

### Continuous Improvement

```yaml
improvement_process:
  feedback_collection:
    - User feedback gathering
    - Performance metrics monitoring
    - Error rate analysis

  iterative_enhancement:
    - Instruction refinement
    - Tool integration updates
    - Performance optimization

  version_management:
    - Mode versioning strategy
    - Backward compatibility
    - Migration procedures
```

### Advanced Features

```yaml
advanced_capabilities:
  multi_mode_collaboration:
    - Mode chaining and workflows
    - Cross-mode data sharing
    - Collaborative task execution

  adaptive_learning:
    - User preference learning
    - Context-aware responses
    - Personalization features

  external_integrations:
    - Enterprise tool connections
    - Third-party service APIs
    - Custom workflow engines
```
