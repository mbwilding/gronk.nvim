local M = {}

function M.get(c, opts)
    return {
        DapBreakpoint = { fg = c.error },
        DapBreakpointCondition = { fg = c.error },
        DapLogPoint = { fg = c.error },
        DapStopped = { fg = c.warn },
        DapStoppedLine = { bg = c.error },
        NvimDapVirtualText = { fg = c.hint },
        NvimDapVirtualTextChanged = { fg = c.warn },
    }
end

return M
