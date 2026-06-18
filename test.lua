
local url = "https://raw.githubusercontent.com/L5ks8/UiLibary/main/loader.lua?t=" .. tostring(os.time())

local ok, body = pcall(function()
    return game:HttpGet(url)
end)
if not ok or not body then
    warn("test.lua: Fehler beim Herunterladen von loader.lua: " .. tostring(body))
    return
end

local tryLoad = loadstring or load
local fn, loadErr = tryLoad(body)
if not fn then
    warn("test.lua: Fehler beim Parsen des geladenen Codes: " .. tostring(loadErr))
    return
end

local ok2, runErr = pcall(fn)
if not ok2 then
    warn("test.lua: Fehler beim Ausführen des Loaders: " .. tostring(runErr))
end
