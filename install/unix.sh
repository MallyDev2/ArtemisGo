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

echo "ArtemisGo installer"
echo "Fetching tunnel profile from $PANEL_URL"

profile_script="$(python3 - "$PANEL_URL" "$SETUP_KEY" <<'PY'
import sys
import urllib.parse
import urllib.request

panel = sys.argv[1].rstrip("/")
key = urllib.parse.quote(sys.argv[2].strip(), safe="")
url = f"{panel}/install.sh?key={key}"
with urllib.request.urlopen(url, timeout=30) as response:
    sys.stdout.write(response.read().decode("utf-8"))
PY
)"

bash -c "$profile_script"
