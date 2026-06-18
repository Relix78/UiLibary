# UiLibrary

Eine kleine, leichtgewichtige UI‑Library für Roblox‑Projekte.

Hinweis: Der Repository‑Name enthält derzeit einen Tippfehler ("UiLibary"). Im README verwende ich die korrigierte Schreibweise "UiLibrary" — wenn du auch den Repository‑Namen ändern möchtest, sag Bescheid.

## Kurzbeschreibung

Diese Bibliothek stellt wiederverwendbare GUI‑Komponenten für Roblox bereit (Fenster, Tabs, Sektionen, Buttons, Toggles, Slider, Dropdowns, Labels, Avatar‑Preview u.ä.). Die Library lässt sich per `loadstring` ins Spiel laden.

## Schnellstart

1. Im Spiel verwenden (Beispiel):

```lua
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Relix78/UiLibary/main/loader"))()

local Window = Library:CreateWindow({
    Title = "Mein UI",
    Version = "1.0.0",
    Theme = "Dark",
})
```

2. Komponenten erstellen (Beispiel):

```lua
local MainTab = Window:CreateTab({ Name = "Main" })
local LeftSection = MainTab:CreateSection({ Title = "Buttons", Column = "Left" })
LeftSection:CreateButton("Test Button", function() print("Button clicked") end)
```

Hinweis: Die vollständige API und alle Optionen (Themes, Logos, Callbacks, Keybinds etc.) findest du in den Beispielen im Repo‑Code.

## Beispiele

Im Repository gibt es Beispielskripte, die zeigen, wie Fenster, Tabs, Sektionen und die verschiedenen UI‑Elemente erstellt werden. Schau dir insbesondere die Dateien im Ordner `examples/` oder `demos/` an (falls vorhanden).

## Beitragende

Beiträge, Fehlerberichte und Feature‑Anfragen sind willkommen. Bitte:

- Öffne ein Issue für Bugs oder größere Änderungen.
- Erstelle einen Pull Request mit einer klaren Beschreibung und Tests/Beispielen, wenn möglich.
- Schreibe aussagekräftige Commit‑Nachrichten.

## Lizenz

Trage hier die gewünschte Lizenz ein (z. B. MIT):

MIT © Relix78

## TODO

- API‑Dokumentation ergänzen (Liste aller Komponenten und Optionen).
- Falls noch nicht vorhanden: Beispiel‑Ordner / Storybook‑ähnliche Demos hinzufügen.
- Optional: Repo‑Name korrigieren (UiLibary → UiLibrary) und ggf. Paketnamen/Importpfade anpassen.
