# The Impossible Quiz

Test your knowledge with tricky quiz questions! Can you guess the correct meaning?

## 🎮 What is this?

**The Impossible Quiz** is an entertaining quiz addon for World of Warcraft that challenges you with tricky questions about words with multiple meanings. Which meaning is the correct one? You decide!

Example: Does "Kiefer" mean a pine tree or a jaw bone?

## ✨ Features

- 🎲 **Randomized Answer Positions** - The correct answer is randomly placed on side A or B for each question
- ✅ **Instant Feedback** - Find out immediately after each answer whether it was correct
- 📖 **Detailed Explanations** - Learn about the different meanings
- 📊 **Progress Tracking** - See your current score and progress
- 🖱️ **Draggable Window** - Position the quiz window exactly where you want it via drag & drop
- 🗺️ **Minimap Button** - Quick access directly via the minimap
  - Left-click: Start quiz
  - Right-click: Reset position
  - Drag: Move button

## 📦 Installation

1. Download the addon via CurseForge
2. Restart World of Warcraft or type `/reload` in-game
3. The addon should now appear in your addon list

## 🎯 Usage

### Starting the Quiz

There are multiple ways to start the quiz:

1. **Chat Command:** Type `/quiz` in chat
2. **Minimap Button:** Left-click the minimap button
3. **Menu:** Via the AddOn menu

### Playing the Quiz

1. Read the question carefully
2. Choose between the two meanings (A or B)
3. Receive instant feedback on whether your answer was correct
4. Read the explanation to learn more about both meanings
5. Click "Nächste Frage" (Next Question) to continue
6. At the end, see your total score

### Controls

- **Move Window:** Hold left mouse button and drag the window
- **Close Window:** Click the close button or press ESC
- **Restart Quiz:** Close the window and open it again

## 🔧 Compatibility

- **Tested with:** World of Warcraft Retail (The War Within - 12.0.5)
- **Interface Version:** 120005
- **Language:** German (UI text is in German)

## ❓ FAQ

### The addon doesn't show up
- Make sure the folder name is **TheImpossibleQuiz**
- Check that the .toc file has the same name: **TheImpossibleQuiz.toc**
- Restart WoW completely (not just `/reload`)

### The logo doesn't appear
- The logo file should be **logo.tga** in the addon folder
- If issues persist: run `/reload` in-game

### The minimap button is missing
- Check if the addon is enabled
- Try `/reload` or restart WoW

### Addon marked as "Incompatible"
- Update to the latest version
- For older WoW versions: Enable "Load out of date AddOns" in the addon settings

## 🛠️ Technical Details

### Files

- `TheImpossibleQuiz.toc` - Addon metadata and load order
- `Data.lua` - Question set with all questions and explanations
- `QuizManager.lua` - Quiz logic (question management, answers, scoring)
- `UI.lua` - User interface (window, buttons, styling)
- `MinimapButton.lua` - Minimap button with drag & drop
- `Main.lua` - Main flow and slash command registration

### Slash Commands

- `/quiz` - Starts the quiz
- `/impossiblequiz` - Alternative command to start the quiz

## 🐛 Bug Reports

If you find a bug or have suggestions for improvement:

1. Check if you're using the latest version
2. Enable Lua error display or install an error addon like **BugSack**
3. Report the bug with details (error message, steps to reproduce) on the CurseForge project page

---

# Das unmögliche Quiz (Deutsch)

Teste dein Wissen mit kniffligen Quiz-Fragen! Kannst du die richtige Bedeutung erraten?

## 🎮 Was ist das?

**Das unmögliche Quiz** ist ein unterhaltsames Quiz-Addon für World of Warcraft, das dich mit kniffligen Fragen herausfordert. Wörter mit mehreren Bedeutungen - aber welche ist die richtige?

Beispiel: **Schloss** - Ist es ein Gebäude oder ein Verschluss? Du entscheidest!

## ✨ Features

- 🎲 **Zufällige Antwortpositionen** - Bei jeder Frage wird die richtige Antwort zufällig auf Seite A oder B platziert
- ✅ **Sofortige Rückmeldung** - Direkt nach jeder Antwort erfährst du, ob sie richtig war
- 📖 **Ausführliche Erklärungen** - Lerne die verschiedenen Bedeutungen kennen
- 📊 **Fortschrittsanzeige** - Siehe deinen aktuellen Punktestand und Fortschritt
- 🖱️ **Verschiebbares Fenster** - Positioniere das Quiz-Fenster per Drag & Drop genau dort, wo du es haben möchtest
- 🗺️ **Minimap-Button** - Schneller Zugriff direkt über die Minimap

## 📦 Installation

1. Lade das Addon über CurseForge herunter
2. Starte World of Warcraft neu oder gib `/reload` ein
3. Das Addon sollte nun in deiner Addon-Liste erscheinen

## 🎯 Nutzung

### Quiz starten

- **Chat-Befehl:** Gib `/quiz` im Chat ein
- **Minimap-Button:** Linksklick auf den Minimap-Button

### Steuerung

- **Fenster verschieben:** Halte die linke Maustaste gedrückt und ziehe das Fenster
- **Fenster schließen:** Klicke auf den Schließen-Button oder drücke ESC

## Slash-Befehle

- `/quiz` - Startet das Quiz
- `/impossiblequiz` - Alternativer Befehl zum Starten

## 👥 Credits

- **Autoren:** Timo & Simon Z.
- **Version:** 1.0
- **Typ:** Quiz & Mini-Game Addon

## 📄 Lizenz

Dieses Addon ist kostenlos und darf für private Zwecke genutzt werden. Bitte beachte die CurseForge-Nutzungsbedingungen.

---

**Viel Spaß beim Rätseln! 🎉**

Kannst du alle Fragen richtig beantworten? Finde es heraus!
