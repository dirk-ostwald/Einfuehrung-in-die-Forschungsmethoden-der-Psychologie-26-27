$ErrorActionPreference = 'Stop'
$source = 'C:\Home\Home\pdwp-online\dirk-ostwald.github.io'
$link = Join-Path $PSScriptRoot '_src'
if (-not (Test-Path -LiteralPath (Join-Path $source '_part_0'))) {
    throw "PDWP-Quellen nicht gefunden: $source"
}
if (Test-Path -LiteralPath $link) {
    $item = Get-Item -LiteralPath $link -Force
    if ($item.LinkType -ne 'Junction' -or $item.Target -ne $source) {
        throw "_src existiert, ist aber nicht die erwartete Junction auf $source."
    }
} else {
    New-Item -ItemType Junction -Path $link -Target $source | Out-Null
}
Write-Host 'PDWP-Quellen sind eingebunden.'

# LaTeX schreibt seine Zwischen-PDF mehrfach; ein Sync-Client kann sie sperren.
# Der lokale Cache liegt ausserhalb des synchronisierten Lehrverzeichnisses.
$latexCache = Join-Path $env:LOCALAPPDATA 'Quarto\Skript-Forschungsmethoden-26-27'
$latexLink = Join-Path $PSScriptRoot '_latex'
New-Item -ItemType Directory -Path $latexCache -Force | Out-Null
if (Test-Path -LiteralPath $latexLink) {
    $item = Get-Item -LiteralPath $latexLink -Force
    if ($item.LinkType -ne 'Junction' -or $item.Target -ne $latexCache) {
        throw "_latex ist nicht die erwartete Junction auf $latexCache."
    }
} else {
    New-Item -ItemType Junction -Path $latexLink -Target $latexCache | Out-Null
}
Write-Host 'Lokaler LaTeX-Cache ist eingerichtet.'
