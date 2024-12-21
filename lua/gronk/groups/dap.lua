local M = {}

function M.get(c, opts)
    return {
        -- DapStopped = { fg = c.error },

        DapBreakpoint = { bg = c.error },
        DapLogPoint = { fg = c.error },
        DapStoppedLine = { bg = c.error },
    }
end

return M
