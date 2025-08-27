#!/usr/bin/env bash
set -euo pipefail

if ! command -v deadnix >/dev/null 2>&1; then
  echo "deadnix not found on PATH" >&2
  exit 0
fi

HELP=$(deadnix --help 2>&1 || true)
if grep -q -- '--fix' <<<"$HELP"; then
  deadnix --fix "$@" || true
elif grep -q -- '--remove' <<<"$HELP"; then
  deadnix --remove "$@" || true
else
  deadnix "$@" || true
fi

