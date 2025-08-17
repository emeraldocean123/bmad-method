# NixOS Knowledge Base

## Core Concepts

### Flakes Best Practices

- Always pin inputs with specific revisions for reproducibility
- Use `follows` to reduce duplicate dependencies
- Structure outputs with proper system architecture handling
- Keep flake.lock under version control

### Module Design Principles

- Single responsibility - each module should have one clear purpose
- Configuration interfaces - use `options` to make modules configurable
- Conditional logic - use `lib.mkIf` and `lib.mkMerge` appropriately
- Documentation - include module descriptions and option documentation

### Performance Optimization

- Use `nix.settings.auto-optimise-store = true` for storage efficiency
- Enable `nix.gc` for automatic garbage collection
- Consider `programs.nh.enable = true` for better rebuild experience
- Use `boot.tmp.cleanOnBoot = true` for temporary file cleanup

### Common Patterns

#### Conditional Module Loading

```nix
imports = lib.optional (config.myFeature.enable) ./feature-module.nix;
```

#### Option Definitions

```nix
options.myService = {
  enable = lib.mkEnableOption "my custom service";
  package = lib.mkPackageOption pkgs "my-package" {};
  extraConfig = lib.mkOption {
    type = lib.types.lines;
    default = "";
    description = "Extra configuration";
  };
};
```

#### Hardware-Specific Configurations

```nix
# In hardware modules
boot.kernelModules = lib.mkIf isNvidia [ "nvidia" ];
services.xserver.videoDrivers = lib.mkIf isNvidia [ "nvidia" ];
```

## Common Issues and Solutions

### Build Performance

- **Issue**: Slow rebuilds
- **Solution**: Use `nix.settings.builders-use-substitutes = true` and enable binary caches

### Module Conflicts

- **Issue**: Multiple modules defining same options
- **Solution**: Use `lib.mkMerge` or `lib.mkForce` appropriately

### Hardware Detection

- **Issue**: Hardware not properly detected
- **Solution**: Use `nixos-generate-config --show-hardware-config` and review generated settings

### Home Manager Integration

- **Issue**: Conflicts between system and user configs
- **Solution**: Clearly separate system-level vs user-level configurations

## Recommended Tools

### Development

- `nh` - Better rebuild experience with progress and error handling
- `nix-tree` - Visualize dependency trees
- `nix-diff` - Compare derivations
- `nixos-option` - Query configuration options

### Maintenance

- `nix-collect-garbage` - Clean old generations
- `nixos-rebuild list-generations` - Review system history
- `nix-store --verify --check-contents` - Verify store integrity

## Security Hardening Checklist

### System Level

- [ ] Enable firewall: `networking.firewall.enable = true`
- [ ] Disable root login: `users.users.root.hashedPassword = "!"`
- [ ] Enable fail2ban: `services.fail2ban.enable = true`
- [ ] Configure automatic updates: `system.autoUpgrade.enable = true`

### User Level

- [ ] Use strong password policies
- [ ] Enable sudo timeout: `security.sudo.extraConfig = "Defaults timestamp_timeout=5"`
- [ ] Restrict user permissions appropriately
- [ ] Enable AppArmor/SELinux if needed

### Network

- [ ] Configure SSH properly with key-based auth
- [ ] Disable unnecessary services
- [ ] Use VPN for remote access
- [ ] Enable network monitoring

## Multi-Machine Strategies

### Shared Configuration Pattern

```
nixos-config/
├── flake.nix                 # Main flake file
├── hosts/                    # Machine-specific configs
│   ├── desktop/
│   └── laptop/
├── modules/                  # Shared modules
│   ├── profiles/            # Role-based configs
│   └── hardware/            # Hardware abstractions
└── home/                    # Home Manager configs
    ├── users/
    └── shared/
```

### Configuration Inheritance

- Use profiles for role-based configuration (desktop, server, laptop)
- Hardware modules for device-specific settings
- User modules for person-specific configurations
- Shared modules for common functionality

## Troubleshooting Guide

### Build Failures

1. Check error message for specific package/module
2. Try building individual components: `nix build .#nixosConfigurations.hostname.config.system.build.toplevel`
3. Use `--show-trace` for detailed error information
4. Check for syntax errors with `nix flake check`

### Boot Issues

1. Boot from previous generation in GRUB
2. Check kernel logs: `journalctl -b`
3. Verify hardware configuration
4. Test in VM first: `nixos-rebuild build-vm`

### Service Failures

1. Check service status: `systemctl status service-name`
2. Review logs: `journalctl -u service-name`
3. Verify configuration syntax
4. Test service in isolation
