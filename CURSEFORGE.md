# Das unmögliche Quiz

Teste dein Wissen mit kniffligen Teekesselchen-Fragen! Kannst du erraten, welche Bedeutung gemeint ist?

## 🎮 Was ist das?

**Das unmögliche Quiz** ist ein unterhaltsames Quiz-Addon für World of Warcraft, das dich mit den berühmten deutschen **Teekesselchen** herausfordert. Teekesselchen sind Wörter mit mehreren Bedeutungen - aber welche ist die richtige?

Beispiel: **Schloss** - Ist es ein Gebäude oder ein Verschluss? Du entscheidest!

## ✨ Features

- 🎲 **Zufällige Antwortpositionen** - Bei jeder Frage wird die richtige Antwort zufällig auf Seite A oder B platziert
- ✅ **Sofortige Rückmeldung** - Direkt nach jeder Antwort erfährst du, ob sie richtig war
- 📖 **Ausführliche Erklärungen** - Lerne die verschiedenen Bedeutungen jedes Teekesselchens kennen
- 📊 **Fortschrittsanzeige** - Sehe deinen aktuellen Punktestand und Fortschritt
- 🖱️ **Verschiebbares Fenster** - Positioniere das Quiz-Fenster per Drag & Drop genau dort, wo du es haben möchtest
- 🗺️ **Minimap-Button** - Schneller Zugriff direkt über die Minimap
  - Linksklick: Quiz starten
  - Rechtsklick: Position zurücksetzen
  - Ziehen: Button verschieben

## 📦 Installation

1. Lade das Addon über CurseForge herunter
2. Starte World of Warcraft neu oder gib `/reload` ein
3. Das Addon sollte nun in deiner Addon-Liste erscheinen

## 🎯 Nutzung

### Quiz starten

Es gibt drei Möglichkeiten, das Quiz zu starten:

1. **Chat-Befehl:** Gib `/teekessel` im Chat ein
2. **Minimap-Button:** Linksklick auf den Minimap-Button
3. **Menü:** Über das AddOn-Menü

### Quiz spielen

1. Lies die Frage aufmerksam
2. Wähle zwischen den beiden Bedeutungen (A oder B)
3. Erhalte sofort Feedback, ob deine Antwort richtig war
4. Lies die Erklärung, um mehr über beide Bedeutungen zu lernen
5. Klicke auf "Nächste Frage", um fortzufahren
6. Am Ende siehst du deinen Gesamtscore

### Steuerung

- **Fenster verschieben:** Halte die linke Maustaste gedrückt und ziehe das Fenster
- **Fenster schließen:** Klicke auf den Schließen-Button oder drücke ESC
- **Quiz neustarten:** Schließe das Fenster und öffne es erneut

## 🔧 Kompatibilität

- **Getestet mit:** World of Warcraft Retail (The War Within - 12.0.5)
- **Interface Version:** 120005
- **Sprache:** Deutsch

## ❓ Häufige Fragen (FAQ)

### Das Addon wird nicht angezeigt
- Stelle sicher, dass der Ordnername **DasUmmöglicheQuiz** lautet
- Überprüfe, ob die .toc-Datei den gleichen Namen hat: **DasUmmöglicheQuiz.toc**
- Starte WoW komplett neu (nicht nur `/reload`)

### Das Logo wird nicht angezeigt
- Die Logo-Datei sollte als **logo.tga** im Addon-Ordner vorhanden sein
- Bei Problemen: `/reload` im Spiel ausführen

### Der Minimap-Button fehlt
- Überprüfe, ob das Addon aktiviert ist
- Versuche `/reload` oder starte WoW neu

### Addon als "Inkompatibel" markiert
- Aktualisiere auf die neueste Version
- Bei älteren WoW-Versionen: Lade veraltete Addons in den Addon-Einstellungen zu

## 🛠️ Technische Details

### Dateien

- `DasUmmöglicheQuiz.toc` - Addon-Metadaten und Ladereihenfolge
- `Data.lua` - Fragenset mit allen Teekesselchen und Erklärungen
- `QuizManager.lua` - Quiz-Logik (Fragenverwaltung, Antworten, Punktestand)
- `UI.lua` - Benutzeroberfläche (Fenster, Buttons, Styling)
- `MinimapButton.lua` - Minimap-Button mit Drag & Drop
- `Main.lua` - Hauptablauf und Slash-Command-Registrierung

### Slash-Befehle

- `/teekessel` - Startet das Quiz

## 🐛 Fehler melden

Wenn du einen Fehler findest oder Verbesserungsvorschläge hast:

1. Überprüfe, ob du die neueste Version verwendest
2. Aktiviere die Lua-Fehleranzeige oder installiere ein Fehler-Addon wie **BugSack**
3. Melde den Fehler mit Details (Fehlermeldung, Schritte zur Reproduktion) auf der CurseForge-Projektseite

## 👥 Credits

- **Autoren:** Timo & Simon Z.
- **Version:** 1.0
- **Typ:** Quiz & Mini-Game Addon

## 📄 Lizenz

Dieses Addon ist kostenlos und darf für private Zwecke genutzt werden. Bitte beachte die CurseForge-Nutzungsbedingungen.

---

**Viel Spaß beim Rätseln! 🎉**

Kennst du alle Teekesselchen? Finde es heraus!
