local M = {}

function M.get(c)
    return {
        LspLens = { fg = c.redundant },
    }
end

return M
