
#!/bin/sh

set -e

TMPDIR=/mnt/us/KFPM-Temporary
mkdir -p "$TMPDIR"

# Download + Extract
curl -fSL --progress-bar -o "$TMPDIR/renameotabins.zip" https://github.com/crazy-electron/GnomeGames4Kindle/releases/latest/download/gnomegames.zip
unzip -q "$TMPDIR/renameotabins.zip" -d "$TMPDIR"

# First Subfolder
SUBDIR=$(find "$TMPDIR" -mindepth 1 -maxdepth 1 -type d | head -n 1)

# Copy Contents
mkdir -p /mnt/us/extensions/renameotabins
cp -r "$SUBDIR"/* /mnt/us/extensions/gnomegames

# Cleanup
rm -rf "$TMPDIR"

exit 0
