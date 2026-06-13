# Das unmögliche Quiz (WoW Addon)

Kleines Quiz-Addon fuer World of Warcraft mit kniffligen Teekesselchen-Fragen.

## Features

- Zufaellige Seitenzuordnung der Antwort (`A` oder `B`) pro Frage
- Direkte Rueckmeldung nach jeder Antwort (richtig/falsch)
- Erklaerung zur richtigen Bedeutung
- Fortschrittsanzeige und Punktestand
- Schliessen-Button im Fenster
- Verschiebbares Fenster per Drag & Drop (linke Maustaste)

## Kompatibilitaet

- Getestete `Interface`-Version in `TeekesselchenQuiz.toc`: `120005` (Retail)

## Installation

1. Den Ordner `TeekesselchenQuiz` in deinen AddOns-Ordner kopieren:
   - `World of Warcraft\\_retail_\\Interface\\AddOns\\`
2. Pruefen, dass die Struktur so aussieht:
   - `...\\AddOns\\TeekesselchenQuiz\\TeekesselchenQuiz.toc`
3. Spiel neu starten (kein reines `/reload`, wenn es vorher als veraltet markiert war).

## Nutzung

- Im Spiel den Chat-Befehl ausfuehren:

```text
/teekessel
```

- Antworten mit den beiden Buttons waehlen.
- Mit **Naechste Frage** zur naechsten Runde.
- Fenster mit **Schliessen** ausblenden.
- Fenster mit linker Maustaste greifen und verschieben.

## Dateien

- `Data.lua` - Fragenset und Erklaerungen
- `QuizManager.lua` - Quiz-Logik (Fragen, Antworten, Punkte)
- `UI.lua` - Fenster, Buttons, Drag & Drop
- `Main.lua` - Ablauf und Slash-Command
- `TeekesselchenQuiz.toc` - Addon-Metadaten und Lade-Reihenfolge

## Troubleshooting

- Addon ist als "Inkompatibel/Veraltet" markiert:
  - `Interface` in `TeekesselchenQuiz.toc` mit deiner Client-Version abgleichen.
  - Version im Spiel pruefen mit:

```text
/dump select(4, GetBuildInfo())
```

- Addon wird nicht geladen:
  - Ordnername und `.toc`-Dateiname muessen exakt `TeekesselchenQuiz` heissen.
  - Pfad und Verschachtelung pruefen (kein zusaetzlicher Unterordner dazwischen).

