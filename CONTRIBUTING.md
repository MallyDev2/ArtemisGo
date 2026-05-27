# Contributing

Thanks for helping improve ArtemisGo.

## Scope

This repository contains the public installer entrypoints and documentation for ArtemisGo. Changes should keep setup simple, avoid exposing sensitive tunnel details, and work across supported platforms.

## Development

1. Create a branch from `main`.
2. Keep changes focused.
3. Test installer syntax for the platform you change.
4. Open a pull request with a short summary and verification notes.

## Installer Changes

- Keep commands copy-paste friendly.
- Avoid printing secrets or local network details.
- Preserve Windows, Linux, and macOS support.
- Prefer clear failure messages over silent exits.
