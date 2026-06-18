-- test.lua
-- Lädt das entfernte loader.lua robust, mit Fehlerbehandlung und Fallback falls loadstring nicht verfügbar ist.
local url = "https://raw.githubusercontent.com/L5ks8/UiLibary/main/loader.lua?t=" .. tostring(os.time())

-- Versuche den Inhalt zu holen
local ok, body = pcall(function()
    return game:HttpGet(url)
end)
if not ok or not body then
    warn("test.lua: Fehler beim Herunterladen von loader.lua: " .. tostring(body))
    return
end

-- Wähle je nach Lua-Umgebung loadstring oder load
local tryLoad = loadstring or load
local fn, loadErr = tryLoad(body)
if not fn then
    warn("test.lua: Fehler beim Parsen des geladenen Codes: " .. tostring(loadErr))
    return
end

-- Führe den geladenen Code in einer pcall-geschützten Umgebung aus
local ok2, runErr = pcall(fn)
if not ok2 then
    warn("test.lua: Fehler beim Ausführen des Loaders: " .. tostring(runErr))
end
