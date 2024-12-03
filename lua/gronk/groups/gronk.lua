local M = {}

function M.get(c, opts)
    return {
        BlinkCmpItemIdx = { fg = c.inlay },
    }
end

return M
