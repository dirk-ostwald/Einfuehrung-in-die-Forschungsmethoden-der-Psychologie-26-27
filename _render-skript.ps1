$ErrorActionPreference = 'Stop'
Push-Location -LiteralPath (Join-Path $PSScriptRoot 'Vorlesungsskript')
try {
    & quarto render --to pdf --no-clean
    $renderExitCode = $LASTEXITCODE
} finally {
    Pop-Location
}
exit $renderExitCode
