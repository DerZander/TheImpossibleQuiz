# Changelog

Alle wichtigen Änderungen an diesem Projekt werden in dieser Datei dokumentiert.

## [1.0.0] - 2026-06-14

### 🎉 Initiales Release

**Das unmögliche Quiz** - Ein unterhaltsames Quiz-Addon für World of Warcraft!

### ✨ Features

- **Quiz-System**
  - Knifflige Fragen mit zwei Antwortmöglichkeiten (A oder B)
  - Zufällige Seitenzuordnung der richtigen Antwort bei jeder Frage
  - Sofortige Rückmeldung nach jeder Antwort (richtig/falsch)
  - Ausführliche Erklärungen zu jeder Frage
  - Punktestand-Verfolgung während des Quiz
  - Fortschrittsanzeige (z.B. "Frage 3/10")

- **Benutzeroberfläche**
  - Modernes, übersichtliches Quiz-Fenster
  - Verschiebbares Fenster per Drag & Drop
  - Große, gut lesbare Buttons für Antworten A und B
  - "Nächste Frage" Button zum Fortfahren
  - "Schließen" Button zum Beenden
  - Zusammenfassung am Ende mit Gesamtscore

- **Minimap-Integration**
  - Minimap-Button für schnellen Zugriff
  - Linksklick: Quiz starten
  - Rechtsklick: Button-Position zurücksetzen
  - Ziehen: Button-Position anpassen
  - Eigenes Logo mit rundem Design

- **Befehle**
  - `/quiz` - Quiz starten
  - `/unmöglich` - Quiz starten (alternative)

### 🛠️ Technische Details

- **Unterstützte Version:** WoW Retail 12.0.5 (The War Within)
- **Interface Version:** 120005
- **Sprache:** Deutsch
- **Dateien:**
  - `DasUnmöglicheQuiz.toc` - Addon-Metadaten
  - `Data.lua` - Fragendatenbank
  - `QuizManager.lua` - Quiz-Logik
  - `UI.lua` - Benutzeroberfläche
  - `MinimapButton.lua` - Minimap-Button
  - `Main.lua` - Hauptsteuerung

### 📝 Bekannte Einschränkungen

- Keine Persistenz: Fortschritt wird nicht gespeichert
- Fragenpool ist fest im Code definiert
- Keine Schwierigkeitsgrade
- Keine Mehrsprachigkeit

### 👥 Credits

- Entwickelt von: Timo & Simon Z.
- Version: 1.0.0
- Typ: Quiz & Mini-Game

---

**Hinweis:** Dies ist die erste öffentliche Version des Addons.
