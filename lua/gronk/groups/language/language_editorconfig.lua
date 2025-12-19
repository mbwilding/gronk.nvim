local M = {}

function M.get(c)
    return {
        ["dosiniLabel"] = { fg = c.member },
        ["editorconfigUnknownProperty"] = { fg = c.redundant },
    }
end

return M
