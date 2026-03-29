#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

if ! command -v xbuild >/dev/null 2>&1; then
  echo "xbuild not found. Install mono-devel first (e.g., apt-get install -y mono-devel)." >&2
  exit 1
fi

xbuild OpenMooseRedux.csproj /p:Configuration="${1:-Debug}"
