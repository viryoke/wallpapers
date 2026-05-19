#!/usr/bin/env bash
# Download dynamic wallpapers from Dynamic Wallpaper Club
# Usage: ./download-wallpapers.sh

set -e

WALLPAPER_DIR="${HOME}/wallpapers/dynamic"
mkdir -p "$WALLPAPER_DIR"

# Popular dynamic wallpapers from Dynamic Wallpaper Club
# Format: "ID|Name"
WALLPAPERS=(
  "a9q1jiy0cu|Desert Sands"
  "dw3l82brp7m|Sonoma"
  "la4wfuwtkg|Monterey"
  "eekccmgd4c|MacOS Sonoma"
  "eq8ggec3apr|Big Sur Beach 2"
  "gpf7f97jk3b|Fuji"
)

echo "Downloading dynamic wallpapers to $WALLPAPER_DIR..."
echo "=================================================="

for wp in "${WALLPAPERS[@]}"; do
  ID="${wp%%|*}"
  NAME="${wp##*|}"

  echo "Downloading: $NAME (ID: $ID)"

  # Download HEIC file
  curl -L -o "${WALLPAPER_DIR}/${NAME}.heic" \
    "https://dynamicwallpaper.club/wallpaper/${ID}" \
    --fail --silent --show-error

  echo "  ✓ Saved: ${NAME}.heic"
done

echo "=================================================="
echo "Downloaded $(ls -1 "$WALLPAPER_DIR"/*.heic 2>/dev/null | wc -l) wallpapers"
echo "Files location: $WALLPAPER_DIR"