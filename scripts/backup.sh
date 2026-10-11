#!/bin/sh
# End-of-session ritual: copy the Studio place file to a dated backup.
# Usage: scripts/backup.sh /path/to/DragonLair.rbxl
set -eu
SRC="${1:?usage: backup.sh /path/to/DragonLair.rbxl}"
DEST="$HOME/Backups/bel-roblox"
mkdir -p "$DEST"
BASE="$(basename "${SRC%.rbxl}")"
cp "$SRC" "$DEST/$BASE-$(date +%F).rbxl"
echo "Backed up to $DEST/$BASE-$(date +%F).rbxl"
