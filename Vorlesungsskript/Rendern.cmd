@echo off
setlocal
cd /d "%~dp0"
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Setup.ps1"
if errorlevel 1 exit /b 1
quarto render --to pdf --no-clean
if errorlevel 1 exit /b 1
echo Fertig: _book\Skript-Einfuehrung-in-die-Forschungsmethoden-der-Psychologie.pdf
pause
