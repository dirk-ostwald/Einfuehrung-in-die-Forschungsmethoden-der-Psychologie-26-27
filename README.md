# Einführung in die Forschungsmethoden der Psychologie · Wintersemester 2026/27

Vorlesungsmaterialien von **Prof. Dr. Dirk Ostwald**, Institut für Psychologie,
Otto-von-Guericke-Universität Magdeburg. Die Veranstaltung vermittelt Grundlagen
der Forschungsmethoden für das Psychologiestudium und den Studiengang
Philosophie-Neurowissenschaften-Kognition.

## Materialien

Die Folien liegen als fertige PDFs vor. Zum Lesen ist keine Softwareinstallation
außer einem PDF-Betrachter erforderlich.

| Thema | Folien | Quellen und Abbildungen |
| --- | --- | --- |
| 0 · Formalia | [PDF](0-Formalia/0-Formalia.pdf) | [Ordner](0-Formalia/) |
| 1 · Naturwissenschaft | [PDF](1-Naturwissenschaft/1-Naturwissenschaft.pdf) | [Ordner](1-Naturwissenschaft/) |
| Begleitendes Skript | [PDF](Skript/_book/Skript-Einfuehrung-in-die-Forschungsmethoden-der-Psychologie.pdf) | [Ordner](Skript/) |

Die Ordner `1-Naturwissenschaft` und `Skript` sind in die Versionsverwaltung
einbezogen. Hinweise zu den extern eingebundenen Skriptkapiteln und zum Rendern
stehen in der [Skript-Dokumentation](Skript/README.md).

Weitere Informationen zur Veranstaltung stehen auf der
[Kurswebseite](https://www.ipsy.ovgu.de/Institut/Abteilungen+des+Institutes/Methodenlehre/Lehre/Wintersemester+2027/Einf%C3%BChrung+in+die+Forschungsmethoden+der+Psychologie.html).

## Materialien rendern

Zum Bearbeiten und Rendern der Quellen werden Quarto, R mit `knitr` und den im
Dokument verwendeten Paketen sowie eine LaTeX-Installation mit Beamer benötigt.
Das Dokument aus seinem Themenordner rendern:

```powershell
cd 0-Formalia
quarto render 0-Formalia.qmd --to beamer
```

Anschließend die erzeugte PDF prüfen. Die `.qmd`-Quelldateien, Header,
Bibliografien, Abbildungen und fertigen Folien-PDFs werden gemeinsam versioniert.
Temporäre Render-Dateien bleiben außerhalb von Git.

## Korrekturen und Beiträge

Hinweise auf Fehler und Verbesserungsvorschläge sind willkommen. Bitte Thema,
Foliennummer oder Abschnitt und einen konkreten Korrekturvorschlag angeben.
Hinweise zur Bearbeitung stehen in [CONTRIBUTING.md](CONTRIBUTING.md).

## Lizenz und Quellenangabe

Die Lehrmaterialien sind entsprechend den vorhandenen Lizenzangaben unter
**Creative Commons Namensnennung 4.0 International (CC BY 4.0)** veröffentlicht.
Siehe [LICENSE.md](LICENSE.md). Gesonderte Quellen- und Rechteangaben bei
übernommenen Abbildungen oder anderen Fremdinhalten sind zu beachten.

Für einen Verweis auf diese Sammlung:

> Ostwald, D. (2026/27). *Einführung in die Forschungsmethoden der Psychologie:
> Vorlesungsmaterialien zum Wintersemester 2026/27*. Otto-von-Guericke-Universität Magdeburg.

Bitte bei Bezug auf einen konkreten Bearbeitungsstand zusätzlich den Commit
angeben.
