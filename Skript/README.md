# Einführung in die Forschungsmethoden der Psychologie

Dieses Quarto-Buch bindet die Kapitel `001` bis `008` aus dem PDWP-Verzeichnis `_part_0` direkt über die Junction `_src` ein. Die Inhalte werden ausschließlich in `C:\Home\Home\pdwp-online\dirk-ostwald.github.io` gepflegt.

`Setup.cmd` richtet die Verknüpfungen ein; `Rendern.cmd` erzeugt die PDF in `_book`. Alternativ im Skriptordner:

```powershell
quarto render --to pdf --no-clean
```

Benötigt werden Quarto, R mit der PDWP-Paketumgebung (einschließlich `knitr` und `mvtnorm`) sowie XeLaTeX mit deutscher Silbentrennung, `fvextra` und `xurl`. `.Rprofile` aktiviert die gemeinsame Paketumgebung und stellt die UTF-8-Verarbeitung unter Windows sicher. `_latex` verweist auf einen lokalen Cache unter `%LOCALAPPDATA%\Quarto\Skript-Forschungsmethoden-26-27`; dort bleiben LaTeX-Zwischendateien außerhalb des synchronisierten Lehrverzeichnisses. `--no-clean` vermeidet das Löschen eines gegebenenfalls geöffneten Ausgabeverzeichnisses.

Die Buchinhalte entsprechen den Fachfolien 1–12 von 2025/26 und den zusätzlich angegebenen Ethik- und Transparenzfolien. Titelseite, Inhaltsverzeichnis und zitierte Literatur ergänzen lediglich die Buchstruktur. Es gibt kein Vorwort und keine hinzugefügten Erläuterungen. `index.qmd` ist ein leerer technischer Einstieg; `_buch.lua` entfernt dessen Kapitelkopf und passt Tabellenbreiten an. `_layout.tex` ermöglicht den Umbruch langer R-Ausgaben.

`Abgleich.txt` dokumentiert Quellen, Zuordnung und Korrekturen. Beide Dokumentationsdateien werden nicht in das Buch gerendert. Für Nextcloud sollten `_src` und `_latex` als ignorierte Muster hinterlegt sein, damit die verknüpften Quellen nicht doppelt synchronisiert werden.
