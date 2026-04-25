# Build dist\overleaf-template.zip (same layout as package-overleaf.sh)
$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
$Stage = Join-Path $Root "dist\overleaf-template"
$OutZip = Join-Path $Root "dist\overleaf-template.zip"

if (Test-Path $Stage) { Remove-Item -Recurse -Force $Stage }
if (Test-Path $OutZip) { Remove-Item -Force $OutZip }
New-Item -ItemType Directory -Force -Path (Join-Path $Stage "assets\logos") | Out-Null

Copy-Item (Join-Path $Root "overleaf\poster.tex") (Join-Path $Stage "poster.tex")
Copy-Item (Join-Path $Root "poster.bib") $Stage
Copy-Item (Join-Path $Root "beamerthemegemini.sty") $Stage
Copy-Item (Join-Path $Root "colorthemes\beamercolortheme*.sty") $Stage
if (Test-Path (Join-Path $Root "LICENSE.md")) {
  Copy-Item (Join-Path $Root "LICENSE.md") $Stage
}
Copy-Item (Join-Path $Root "overleaf\README-OVERLEAF.md") (Join-Path $Stage "README.md")

$logos = Join-Path $Root "assets\logos"
if (Test-Path $logos) {
  Copy-Item (Join-Path $logos "*") (Join-Path $Stage "assets\logos")
}

New-Item -ItemType Directory -Force -Path (Join-Path $Root "dist") | Out-Null
Compress-Archive -Path $Stage -DestinationPath $OutZip -Force
Write-Host "Wrote $OutZip"
