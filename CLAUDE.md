# Project Overview

GitHub Profile README generator using PowerShell. Creates dynamic SVG profile cards with GitHub statistics that auto-update daily via GitHub Actions.

## Key Files

- `today.ps1` - Main script: fetches GitHub stats via GraphQL API, updates SVGs
- `New-ProfileSvg.ps1` - Generates dark/light mode SVG templates
- `config.ps1` - Configuration (colors, layout, profile info)
- `scripts/image_to_ascii.py` - Converts profile.jpg to ASCII art
- `.github/workflows/build.yaml` - CI/CD pipeline (runs daily at 4 AM UTC)

## Local Development

1. Create `env.ps1` with your credentials:
   ```powershell
   $env:ACCESS_TOKEN = "your-github-token"
   $env:USER_NAME = "gwild"
   ```

2. Run the scripts:
   ```bash
   pwsh ./New-ProfileSvg.ps1   # Generate SVG templates
   pwsh ./today.ps1            # Fetch stats and update SVGs
   ```

## GitHub Actions

Requires these repository secrets:
- `ACCESS_TOKEN` - GitHub PAT with `read:user` and `repo` scopes
- `USER_NAME` - GitHub username

## Output Files

- `dark_mode.svg` / `light_mode.svg` - Generated profile cards
- `ascii-art.txt` - ASCII art from profile.jpg
- `cache/*.txt` - Cached repository statistics
