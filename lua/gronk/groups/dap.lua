local M = {}

function M.get(c, opts)
    return {
        -- DapStopped = { fg = c.error },

        DapBreakpoint = { fg = c.error },
        DapLogPoint = { fg = c.error },
        DapStoppedLine = { bg = c.error },
        NvimDapVirtualText = { fg = c.hint },
        NvimDapVirtualTextChanged = { fg = c.warn },
    }
end

return M
