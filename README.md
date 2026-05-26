# ArtemisGo Installer

Cross-platform installer entrypoints for ArtemisGo tunnels.

## Windows

```powershell
$env:ARTEMISGO_KEY="your-setup-key"; irm https://raw.githubusercontent.com/MallyDev2/ArtemisGo/main/install/windows.ps1 | iex
```

## Linux and macOS

```bash
ARTEMISGO_KEY="your-setup-key" bash -c "$(curl -fsSL https://raw.githubusercontent.com/MallyDev2/ArtemisGo/main/install/unix.sh)"
```

After setup, run `ArtemisGo` while hosting.
