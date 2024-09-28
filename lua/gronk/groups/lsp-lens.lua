local M = {}

function M.get(c, opts)
    return {
        LspLens = { fg = c.redundant },
    }
end

return M
