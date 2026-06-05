# If winget not installed
# Win + R
# ms-windows-store://pdp?&productid=9nblggh4nns1

# install software
winget install --force `
  Microsoft.Powershell `
  Discord.Discord `
  Docker.DockerDesktop `
  Git.Git `
  Google.Chrome.EXE `
  Microsoft.PowerToys `
  Mozilla.Firefox `
  RiotGames.Valorant.NA `
  Valve.Steam `
  JetBrains.WebStorm `
  qBittorrent.qBittorrent `
  Microsoft.VisualStudioCode `
  Brave.Brave'
  Logitech.GHUB

wsl --update
winget install --id 9PFHDD62MXS1 --source msstore # Apple Music
winget install --id 9N0DX20HK701 --source msstore # Microsoft Terminal
# Remove desktop shortcuts
$DesktopPaths = [Environment]::GetFolderPath("Desktop"), [Environment]::GetFolderPath("CommonDesktopDirectory")
Get-ChildItem -Path $DesktopPaths -Include *.lnk, *.url -Recurse -Force | Remove-Item

# Uninstall bloatware
winget install --force --silent`
  Microsoft.Teams `
  Microsoft.Teams.Free `
  "Microsoft To Do" `
  "Outlook" `
  "Start Experiences App" `
  "Mail and Calendar" `
  "Microsoft 365 Copilot"

# Remove apps from running on startup
