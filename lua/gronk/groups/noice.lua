local M = {}

function M.get(c, opts)
    return {
        NoiceAttr = { fg = c.fg },
    }
end

return M
