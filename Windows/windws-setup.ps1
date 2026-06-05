# If winget not installed
# Win + R
# ms-windows-store://pdp?&productid=9nblggh4nns1

winget install --force `
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
  Brave.Brave

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
