$ErrorActionPreference = 'Stop'

# Nur die erzeugte Buchdatei verschieben, keine LaTeX-Quelldateien.
$texName = 'Einfuehrung-in-die-Forschungsmethoden-der-Psychologie-2027.tex'
$generatedTex = Join-Path $PSScriptRoot $texName
$cacheDirectory = Join-Path $PSScriptRoot '_latex\build'
if (Test-Path -LiteralPath $generatedTex) {
    New-Item -ItemType Directory -Path $cacheDirectory -Force | Out-Null
    Move-Item -LiteralPath $generatedTex -Destination (Join-Path $cacheDirectory $texName) -Force
}
