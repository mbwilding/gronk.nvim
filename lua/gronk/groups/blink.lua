local M = {}

function M.get(c, opts)
    return {
        BlinkCmpItemIdx = { fg = c.number },
    }
end

return M
