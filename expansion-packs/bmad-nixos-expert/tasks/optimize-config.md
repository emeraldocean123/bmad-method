# optimize-config

## Task Overview

Analyze NixOS configuration for performance, maintainability, and best practices optimization.

## Process

### 1. Configuration Analysis

**Elicit: true**

Please provide your current NixOS configuration structure. I need to see:

1. **Flake.nix** (if using flakes)
2. **Main configuration.nix files**
3. **Module structure** (list directories/files)
4. **Hardware configurations**
5. **Home Manager setup** (if used)

**Format your response as:**

```
FLAKE: [paste flake.nix content or "not using flakes"]
MAIN-CONFIG: [paste main configuration.nix]
MODULES: [list module files/directories]
HARDWARE: [paste hardware-configuration.nix]
HOME-MANAGER: [describe setup or paste config]
ISSUES: [describe any current problems or performance concerns]
```

### 2. Performance Analysis

**Review Build Performance:**

- Check for unnecessary rebuilds
- Identify heavy dependencies
- Analyze module interdependencies
- Review package overlay usage

**System Performance:**

- Boot time optimization opportunities
- Service configuration efficiency
- Resource usage patterns

### 3. Maintainability Review

**Module Structure:**

- Evaluate module separation and abstraction
- Check for code duplication
- Review configuration organization
- Assess reusability across systems

**Documentation:**

- Check for configuration comments
- Review module purpose clarity
- Evaluate change tracking

### 4. Best Practices Compliance

**Flakes Usage:**

- Input pinning strategy
- Output structure
- Lock file management

**Security:**

- User privilege separation
- Service hardening
- Network configuration

**Hardware Optimization:**

- Driver configuration
- Performance tuning
- Power management

### 5. Optimization Recommendations

Provide specific, actionable recommendations in priority order:

1. **Critical Issues** - Fix immediately
2. **Performance Improvements** - Significant impact
3. **Maintainability** - Long-term benefits
4. **Best Practices** - Standards compliance

### 6. Implementation Plan

For each recommendation:

- Provide exact configuration changes
- Explain the benefits
- Note any potential compatibility issues
- Suggest testing approach

## Expected Deliverables

1. **Optimization Report** with findings and recommendations
2. **Specific Configuration Changes** with code examples
3. **Implementation Priority** ranking
4. **Testing Strategy** for validating changes
5. **Performance Benchmarks** (before/after expectations)

## Follow-up Actions

- Test configurations in VM before applying
- Create git branch for changes
- Document all modifications
- Plan staged rollout strategy
