# UiLibrary

Ein schlankes, modulares UI‑Toolkit für Roblox‑Projekte. (Repository‑Name: `UiLibary` — Tippfehler bleibt unverändert.)

Kurz und knapp: diese Library stellt grundlegende GUI‑Bausteine bereit und hat ein einfaches, konsistentes API‑Design.

Kurzdokumentation / API

- Loader
  - Laden per loadstring: `local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Relix78/UiLibary/main/loader.lua?t=" .. os.time()))()`

- Library
  - Library:CreateWindow(options) → Window
    - options (Beispiele): Title, Version, Theme, Logo, SecondaryLogo, Themes (Tabelle), OnClose (funktion)

- Window
  - Window:CreateTab(opts) → Tab
    - opts: Name, Icon, Columns (bool), Searchbar (bool), SecondaryTab (bool)

- Tab
  - Tab:CreateSection(opts) → Section
    - opts: Title (string) oder direkt CreateSection("Title"), Column = "Left"/"Right", Droppable (bool)

- Section
  - Section:CreateButton(title, callback)
  - Section:CreateToggle({Title, Default, Callback})
  - Section:CreateSlider({Title, Min, Max, Default, Suffix, Callback})
  - Section:CreateDropdown({Title, Options (array), Default, Searchbar, Callback})
  - Section:CreateLabel({Title, Default})
  - Section:CreateParagraph({Text})
  - Section:CreateAvatar(name)
  - Section:CreateKeybind({Title, Default (Enum.KeyCode), Callback})

Hinweise

- Die README enthält nur eine kompakte API‑Referenz und kein Beispiel‑/Entwicklungs‑Material.
- Die genaue Signatur einzelner Methoden (optionale Felder, Rückgabewerte) ist in der Quelldatei dokumentiert — bei Fragen nenne mir eine Methode, dann ergänze ich die Details.

Das war's — sauber, kurz und fokussiert auf die API. Wenn du eine einzelne Methode ausführlicher dokumentiert haben möchtest, sag mir welche.