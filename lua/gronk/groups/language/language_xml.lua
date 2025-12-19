local M = {}

function M.get(c)
    return {
        ["xmlTag"] = { fg = c.member },
        ["xmlTagName"] = { fg = c.keyword },
    }
end

return M
