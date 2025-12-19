local M = {}

function M.get(c)
    return {
        ["jsonKeyword"] = { fg = c.keyword },
    }
end

return M
