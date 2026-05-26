$ErrorActionPreference = "Stop"

$PanelUrl = $env:ARTEMISGO_PANEL
if ([string]::IsNullOrWhiteSpace($PanelUrl)) {
  $PanelUrl = "https://tunnels.mallydev.xyz"
}
$PanelUrl = $PanelUrl.TrimEnd("/")

$SetupKey = $env:ARTEMISGO_KEY
if ([string]::IsNullOrWhiteSpace($SetupKey)) {
  $SetupKey = Read-Host "ArtemisGo setup key"
}
if ([string]::IsNullOrWhiteSpace($SetupKey)) {
  throw "A setup key is required."
}

Write-Host ""
Write-Host "ArtemisGo installer" -ForegroundColor Cyan
Write-Host "Fetching tunnel profile from $PanelUrl" -ForegroundColor DarkGray

$encodedKey = [System.Uri]::EscapeDataString($SetupKey.Trim())
$script = Invoke-RestMethod -Uri "$PanelUrl/install.ps1?key=$encodedKey"
Invoke-Expression $script
