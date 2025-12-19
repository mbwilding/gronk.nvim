local M = {}

function M.get(c)
    return {
        ["jsonKeyword"] = { fg = c.macro },
        ["jsonBoolean"] = { fg = c.keyword },
    }
end

return M
