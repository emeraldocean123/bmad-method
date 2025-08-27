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

# Optional AI fixer (placeholder): requires scripts/ai-fix.sh wiring to a local model or API
ai-fix:
    ./scripts/ai-fix.sh || true

