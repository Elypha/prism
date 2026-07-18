#!/usr/bin/env bash
set -euo pipefail

force=0
dry_run=0
codex_home="${CODEX_HOME:-$HOME/.codex}"
agent_base_url="https://raw.githubusercontent.com/Elypha/prism/master/agents"

usage() {
  cat <<'EOF'
Install both Prism custom agents.

Usage:
  curl -fsSL https://raw.githubusercontent.com/Elypha/prism/master/install-agents.sh | bash
  curl -fsSL https://raw.githubusercontent.com/Elypha/prism/master/install-agents.sh | bash -s -- [options]

Options:
  --codex-home PATH  Configuration root containing agents/ (default: $CODEX_HOME or $HOME/.codex)
  --force            Replace existing Prism agent files
  --dry-run          Print the planned destinations without writing
  -h, --help         Show this help

The installer never installs the Prism skill or changes the user's AGENTS.md.
EOF
}

while (($# > 0)); do
  case "$1" in
    --codex-home)
      (($# >= 2)) || { echo "Missing value for --codex-home" >&2; exit 2; }
      codex_home="$2"
      shift 2
      ;;
    --force)
      force=1
      shift
      ;;
    --dry-run)
      dry_run=1
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown option: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
done

normalize_for_shell() {
  if command -v cygpath >/dev/null 2>&1; then
    cygpath -u "$1"
  else
    printf '%s\n' "$1"
  fi
}

codex_home="$(normalize_for_shell "$codex_home")"

target_agent_root="${codex_home%/}/agents"
target_verifier="$target_agent_root/prism-verifier.toml"
target_strategist="$target_agent_root/prism-strategist.toml"

if ((dry_run)); then
  printf 'Prism agent installation preview:\n'
  printf '  Source:     %s\n' "$agent_base_url"
  printf '  Verifier:   %s\n' "$target_verifier"
  printf '  Strategist: %s\n' "$target_strategist"
  exit 0
fi

collision=0
for path in "$target_verifier" "$target_strategist"; do
  if [[ -e "$path" ]]; then
    printf 'Existing Prism path: %s\n' "$path" >&2
    collision=1
  fi
done

if ((collision && !force)); then
  echo "Review the existing files or rerun with --force." >&2
  exit 1
fi

download_root="$(mktemp -d)"
trap 'rm -rf -- "$download_root"' EXIT

curl -fsSL "$agent_base_url/prism-verifier.toml" -o "$download_root/prism-verifier.toml"
curl -fsSL "$agent_base_url/prism-strategist.toml" -o "$download_root/prism-strategist.toml"

mkdir -p "$target_agent_root"
cp -f "$download_root/prism-verifier.toml" "$target_verifier"
cp -f "$download_root/prism-strategist.toml" "$target_strategist"

printf 'Prism agent installation complete.\n'
printf '  Agents: %s\n' "$target_agent_root"
