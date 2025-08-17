# Custom Mode Template

## Mode Configuration

```yaml
mode_name: '[Your Mode Name]'
mode_id: '[unique-mode-identifier]'
version: '1.0.0'
description: '[Brief description of mode purpose]'
category: '[development|testing|security|documentation|deployment]'
```

## Mode Instructions

### Primary Role

```
You are a [specific role] with [X years] of experience in [domain].
Your expertise includes [list key expertise areas].
```

### Specialization Areas

```
- [Area 1]: [Specific knowledge and capabilities]
- [Area 2]: [Specific knowledge and capabilities]
- [Area 3]: [Specific knowledge and capabilities]
```

### Methodology and Approach

```
1. [Step 1 of your systematic approach]
2. [Step 2 of your systematic approach]
3. [Step 3 of your systematic approach]
4. [Step 4 of your systematic approach]
```

### Communication Style

```
- Tone: [Professional/Technical/Casual]
- Detail Level: [High/Medium/Low]
- Format Preference: [Structured/Narrative/Bullet Points]
- Code Examples: [Always/When Relevant/Minimal]
```

### Tools and Integrations

```yaml
required_tools:
  - tool_name: '[Tool Name]'
    purpose: "[What it's used for]"
    mcp_server: '[MCP server if applicable]'

optional_tools:
  - tool_name: '[Tool Name]'
    purpose: '[Enhancement it provides]'
    mcp_server: '[MCP server if applicable]'
```

### Quality Standards

```
- [Quality criterion 1 with measurable outcome]
- [Quality criterion 2 with measurable outcome]
- [Quality criterion 3 with measurable outcome]
```

### Output Formats

```yaml
primary_outputs:
  - format: '[Format type]'
    description: '[When to use this format]'
    template: '[Template or structure]'

secondary_outputs:
  - format: '[Format type]'
    description: '[When to use this format]'
    template: '[Template or structure]'
```

## MCP Server Integration

### Required MCP Servers

```json
{
  "required_servers": [
    {
      "name": "[server-name]",
      "purpose": "[what it provides]",
      "installation": "[installation command]",
      "configuration": {
        "port": 3001,
        "timeout": 5000,
        "auth_required": false
      }
    }
  ]
}
```

### Optional MCP Servers

```json
{
  "optional_servers": [
    {
      "name": "[server-name]",
      "purpose": "[enhancement it provides]",
      "installation": "[installation command]",
      "configuration": {
        "port": 3002,
        "timeout": 10000,
        "auth_required": true
      }
    }
  ]
}
```

## Example Interactions

### Example 1: [Scenario Name]

```
User Input: "[Example user request]"

Expected Mode Response:
"[How the mode should respond, showing style and approach]"

Tools Used:
- [Tool 1]: [Purpose in this scenario]
- [Tool 2]: [Purpose in this scenario]

Output Format: [Format used for this scenario]
```

### Example 2: [Scenario Name]

```
User Input: "[Example user request]"

Expected Mode Response:
"[How the mode should respond, showing style and approach]"

Tools Used:
- [Tool 1]: [Purpose in this scenario]
- [Tool 2]: [Purpose in this scenario]

Output Format: [Format used for this scenario]
```

## Activation Keywords

```yaml
primary_keywords:
  - '[keyword 1]'
  - '[keyword 2]'
  - '[keyword 3]'

secondary_keywords:
  - '[related keyword 1]'
  - '[related keyword 2]'
  - '[related keyword 3]'
```

## Performance Characteristics

### Expected Response Times

```yaml
response_times:
  simple_queries: '< 2 seconds'
  complex_analysis: '< 10 seconds'
  tool_integration: '< 5 seconds'
  comprehensive_reports: '< 30 seconds'
```

### Resource Requirements

```yaml
resources:
  memory: '[Estimated memory usage]'
  cpu: '[Estimated CPU usage]'
  network: '[Network requirements if any]'
  storage: '[Storage requirements if any]'
```

## Testing and Validation

### Test Scenarios

```yaml
functional_tests:
  - name: '[Test scenario name]'
    input: '[Test input]'
    expected_output: '[Expected result]'
    success_criteria: '[How to measure success]'

integration_tests:
  - name: '[Integration test name]'
    description: '[What this tests]'
    steps: ['[Step 1]', '[Step 2]', '[Step 3]']
    success_criteria: '[How to measure success]'
```

### Quality Metrics

```yaml
quality_metrics:
  accuracy: '[How to measure accuracy]'
  consistency: '[How to measure consistency]'
  performance: '[How to measure performance]'
  user_satisfaction: '[How to measure satisfaction]'
```

## Maintenance and Updates

### Update Schedule

```yaml
maintenance:
  instruction_review: '[Frequency of instruction updates]'
  tool_updates: '[Frequency of tool integration updates]'
  performance_review: '[Frequency of performance analysis]'
  user_feedback_review: '[Frequency of feedback incorporation]'
```

### Version Control

```yaml
versioning:
  schema: '[Versioning scheme]'
  changelog: '[Where to track changes]'
  backward_compatibility: '[Compatibility approach]'
  migration_guide: '[How to handle breaking changes]'
```

## Documentation Requirements

### User Documentation

```yaml
user_docs:
  quick_start: '[Quick start guide location]'
  detailed_guide: '[Comprehensive guide location]'
  examples: '[Example collection location]'
  faq: '[FAQ location]'
```

### Technical Documentation

```yaml
technical_docs:
  implementation: '[Implementation details location]'
  api_reference: '[API documentation location]'
  troubleshooting: '[Troubleshooting guide location]'
  architecture: '[Architecture overview location]'
```

## Support and Community

### Support Channels

```yaml
support:
  primary_contact: '[Primary support contact]'
  documentation: '[Documentation URL]'
  community_forum: '[Forum or discussion URL]'
  issue_tracker: '[Issue tracking URL]'
```

### Contribution Guidelines

```yaml
contributions:
  code_style: '[Code style requirements]'
  testing_requirements: '[Testing requirements]'
  documentation_standards: '[Documentation standards]'
  review_process: '[Review and approval process]'
```
