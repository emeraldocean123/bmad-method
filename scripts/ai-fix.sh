#!/usr/bin/env bash
set -euo pipefail

# Placeholder AI fixer: collect remaining statix findings and prompt a local or remote model
# Requirements (choose one):
# - Local: Ollama running with a code model (e.g., `ollama run qwen2.5-coder`)
# - Remote: Set OPENAI_API_KEY (or other provider) and wire a curl call below

if ! command -v statix >/dev/null 2>&1; then
  echo "statix not found on PATH" >&2
  exit 0
fi

tmpdir=$(mktemp -d)
trap 'rm -rf "$tmpdir"' EXIT

statix check --format json >"$tmpdir/statix.json" || true
if ! jq -e '.[]' "$tmpdir/statix.json" >/dev/null 2>&1; then
  echo "No remaining statix findings."
  exit 0
fi

echo "Statix findings captured in $tmpdir/statix.json"
echo "Implement provider call here (Ollama/OpenAI) to produce patch diffs."
echo "For now, this is a scaffold; no changes applied."

exit 0

