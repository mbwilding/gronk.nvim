local M = {}

M.none = "NONE"
M.bg = "#000000"
M.fg = "#ffffff"

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h:h")

function M.mod(modname)
    if package.loaded[modname] then
        return package.loaded[modname]
    end
    local path = me .. "/" .. modname:gsub("%.", "/") .. ".lua"
    local ret = loadfile(path)()
    package.loaded[modname] = ret
    return ret
end

function M.resolve(groups)
    for _, hl in pairs(groups) do
        if type(hl.style) == "table" then
            for k, v in pairs(hl.style) do
                hl[k] = v
            end
            hl.style = nil
        end
    end
    return groups
end

return M
