local M = {}

function M.get(c)
    return {
        ["shFunctionOne"] = { fg = c.keyword },
        ["shOption"] = { fg = c.macro },
    }
end

return M
