# ArtemisGo

ArtemisGo is a lightweight tunnel client for hosting game servers and TCP services without opening router ports.

It pairs with the ArtemisGo dashboard to create a public address for a local service, then keeps that route online while the client is running.

## Features

- Works on Windows, Linux, and macOS
- Creates an `ArtemisGo` command for repeat launches
- Uses per-tunnel setup keys from the dashboard
- Supports Minecraft Java and custom TCP services
- Keeps local network details off the public address

## Quick Start

1. Create or open a tunnel in the ArtemisGo dashboard.
2. Copy the installer command for your operating system.
3. Run the command on the computer hosting the server.
4. Start your local game server or TCP service.
5. Keep the ArtemisGo terminal open while hosting.

## Windows

Run the PowerShell command shown in your tunnel dashboard.

After setup, start the tunnel anytime with:

```powershell
ArtemisGo
```

## Linux and macOS

Run the shell command shown in your tunnel dashboard.

After setup, start the tunnel anytime with:

```bash
ArtemisGo
```

## Requirements


- An active ArtemisGo tunnel
- The setup key from your tunnel dashboard
- A local service running on the port configured for the tunnel
- OpenSSH available on the host machine
- A terminal window that can stay open while the tunnel is active

## Platform Support

| Platform | Shell | Command created |
| --- | --- | --- |
| Windows | PowerShell | `ArtemisGo` |
| Linux | Bash | `ArtemisGo` |
| macOS | Bash | `ArtemisGo` |

## Security

Each tunnel uses its own setup key and connection credentials. Keep your setup command private and rotate the tunnel from the dashboard if the command is shared by mistake.
