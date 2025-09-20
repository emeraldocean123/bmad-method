# Invoke with `just <recipe>`

set shell := ["bash", "-lc"]

fmt:
    treefmt

lint:
    statix check
    deadnix

fix:
    statix fix
    deadnix --fix
    treefmt

# Optional: run pre-commit across the repo if installed
pre-commit:
    pre-commit run -a || true

# Optional: AI fixer (uses shared scripts repo if available)
ai-fix:
    script="$HOME/Documents/dev/shared/scripts/nix/ai-fix.sh"
    if [ -x "$script" ]; then "$script"; else echo "AI fixer not available at $script" >&2; fi
