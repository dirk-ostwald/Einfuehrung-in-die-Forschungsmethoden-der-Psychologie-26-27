# Hinweise zu Korrekturen und Beiträgen

Fehlerberichte und Verbesserungsvorschläge sind willkommen.

## Einen Fehler melden

Bitte den Themenordner, die Foliennummer oder den Abschnitt nennen und den
Fehler beschreiben. Bei fachlichen Korrekturen helfen eine kurze Begründung
und gegebenenfalls eine Literaturquelle. Bei Render-Problemen bitte den Aufruf,
die Fehlermeldung sowie Betriebssystem, Quarto-, R- und LaTeX-Version angeben.

## Materialien bearbeiten

1. Die passende `.qmd`-Quelldatei im Themenordner bearbeiten.
2. Bestehende Notation, Sprache und Gestaltung beibehalten.
3. Das betroffene Dokument aus seinem Themenordner rendern, wie in der
   [README](README.md) beschrieben.
4. Die erzeugte PDF auf Formeln, Umbrüche, Abbildungen, Verweise und Literatur
   prüfen. Geänderte Quellen und die zugehörigen Folien-PDFs gemeinsam einreichen.
5. Die fachliche Änderung und die erfolgte Prüfung kurz erläutern.

Die PowerPoint-Dateien in den Abbildungsordnern dienen als bearbeitbare Quellen.
Bei Änderungen an solchen Grafiken auch die eingebundene PDF-Ausgabe aktualisieren.
Neue Fremdinhalte benötigen nachvollziehbare Quellen- und Lizenzangaben.

## Skript und Naturwissenschaft

Die Ordner `Skript` und `1-Naturwissenschaft` werden einschließlich ihrer
Quellen, Abbildungen, Konfiguration und fertigen PDFs versioniert.
Externe Quellenverknüpfungen und lokale LaTeX-Caches bleiben durch die
bestehenden Ignore-Regeln außerhalb der Versionsverwaltung.

Die Kapitel des Skripts stammen aus einem separaten PDWP-Quellprojekt.
Inhaltliche Änderungen dieser Kapitel gehören dorthin. Die lokale Einbindung
`Skript/_src` ist eine Verzeichnisverknüpfung, keine unabhängige Kopie.
Änderungen darin wirken unmittelbar auf das Quellprojekt. `Skript/_latex`
verweist auf einen lokalen LaTeX-Cache.

## Literatur

Nach Änderungen an der zugehörigen Zotero-Bibliothek die Projektbibliografie im
Format **Better BibTeX** neu exportieren und die bestehende `.bib`-Datei ersetzen.
Hintergrund-Export aktivieren. „Notizen exportieren“, „Dateien exportieren“,
„Anmerkungen einschließen“, „abgekürzte Zeitschriftentitel verwenden“ und
„Halte aktuell“ deaktiviert lassen. Anschließend die im Projekt verwendeten
Zitierschlüssel prüfen.
