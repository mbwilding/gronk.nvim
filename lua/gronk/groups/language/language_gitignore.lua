local M = {}

function M.get(c)
    return {
        ["gitignoreRange"] = { fg = c.number },
    }
end

return M
