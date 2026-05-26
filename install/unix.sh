#!/usr/bin/env bash
set -euo pipefail

PANEL_URL="${ARTEMISGO_PANEL:-https://tunnels.mallydev.xyz}"
PANEL_URL="${PANEL_URL%/}"
SETUP_KEY="${ARTEMISGO_KEY:-}"

if [ -z "$SETUP_KEY" ]; then
  printf "ArtemisGo setup key: "
  IFS= read -r SETUP_KEY
fi

if [ -z "$SETUP_KEY" ]; then
  echo "A setup key is required." >&2
  exit 1
fi

SETUP_KEY="$(printf "%s" "$SETUP_KEY" | tr -d '[:space:]')"

echo "ArtemisGo installer"
echo "Fetching tunnel profile from $PANEL_URL"

profile_script="$(curl -fsSL "$PANEL_URL/install.sh?key=$SETUP_KEY")"

bash -c "$profile_script"
