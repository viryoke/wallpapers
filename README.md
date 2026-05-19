# Dynamic Wallpapers for macOS

HEIC dynamic wallpapers for macOS that change throughout the day based on time/sun position.

## Wallpapers

- **Sonoma.heic** - Apple macOS Sonoma dynamic wallpaper
- **Monterey.heic** - Apple macOS Monterey dynamic wallpaper
- **MacOS Sonoma.heic** - Alternative macOS Sonoma version
- **Big Sur Beach 2.heic** - macOS Big Sur beach scene
- **Desert Sands.heic** - Desert landscape dynamic wallpaper
- **Fuji.heic** - Mount Fuji dynamic wallpaper

## Usage

1. Download HEIC files from this repository
2. On macOS: Double-click the HEIC file to set as wallpaper
3. System Settings → Wallpaper → Select the dynamic wallpaper

## Nix Flakes

This repo can be used as a flake input:

```nix
wallpapers = {
  url = "github:viryoke/wallpapers";
  flake = false;
};
```

## Source

Wallpapers downloaded from [Dynamic Wallpaper Club](https://dynamicwallpaper.club/).