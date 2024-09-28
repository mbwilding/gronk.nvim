local M = {}

M.none = "NONE"
M.bg = "#000000"
M.fg = "#ffffff"

function M.mod(modname)
  if package.loaded[modname] then
    return package.loaded[modname]
  end
  local ret = loadfile(me .. "/" .. modname:gsub("%.", "/") .. ".lua")()
  package.loaded[modname] = ret
  return ret
end

return M
