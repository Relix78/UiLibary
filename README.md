# UiLibrary

Eine kleine, leichtgewichtige UI‑Library für Roblox‑Projekte — übersichtlich, modular und per `loadstring` nutzbar.

Hinweis: Der Repository‑Name lautet aktuell `UiLibary` (Tippfehler). In dieser Dokumentation verwende ich die korrekte Schreibweise „UiLibrary“. Wenn du möchtest, kann ich den Repo‑Namen umbenennen — sag Bescheid.

## Übersicht

Diese Bibliothek bietet wiederverwendbare GUI‑Komponenten für Roblox, z. B. Fenster, Tabs, Sektionen, Buttons, Toggles, Slider, Dropdowns und Labels. Ziel ist ein einfaches API‑Design zum schnellen Erstellen von Ingame‑UIs.

## Features

- Einfaches API‑Interface (CreateWindow, CreateTab, CreateSection, CreateButton, …)
- Themes (z. B. Dark/Light)
- Callbacks und Keybinds
- Beispiele/Demos im Repository

## Schnellstart (Roblox)

1) Direkt ins Spiel laden (Beispiel):

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Relix78/UiLibary/main/loader"))()

local Window = Library:CreateWindow({
    Title = "Mein UI",
    Version = "1.0.0",
    Theme = "Dark",
})

local MainTab = Window:CreateTab({ Name = "Main" })
local LeftSection = MainTab:CreateSection({ Title = "Buttons", Column = "Left" })
LeftSection:CreateButton("Test Button", function()
    print("Button clicked")
end)
```

Hinweis: Die URL verwendet aktuell den bestehenden Repo‑Namen `UiLibary`. Nach einer Umbenennung muss ggf. der Loader‑Link angepasst werden.

## Entwicklung / Beispiele

- Sieh dir den Ordner `examples/` oder `demos/` im Repo an (falls vorhanden) für vollständige Nutzungsbeispiele.
- Zum Entwickeln kannst du die Dateien lokal editieren und per `require`/`loadstring` testen.

## API & Dokumentation

Diese README enthält nur eine Kurzübersicht. Ergänze die ausführliche API‑Dokumentation (Methoden, Parameter, Rückgaben) in einem eigenen Abschnitt oder als separate Datei `API.md`, sobald die endgültige API feststeht.

## Beiträge

Beiträge sind willkommen. So kannst du helfen:

- Öffne ein Issue für Bugs oder Feature‑Wünsche.
- Erstelle einen Pull Request mit klarer Beschreibung und (wenn möglich) Tests oder Beispielskripten.
- Achte auf saubere Commit‑Nachrichten.

## Lizenz

Trage hier die gewünschte Lizenz ein (z. B. MIT). Beispiel:

MIT © Relix78

## TODO

- Vollständige API‑Dokumentation ergänzen (`API.md`).
- Beispiele/Beispielordner erweitern oder ein Storybook‑ähnliches Demo hinzufügen.
- Optional: Repository umbenennen von `UiLibary` → `UiLibrary` und Loader‑URL anpassen.
