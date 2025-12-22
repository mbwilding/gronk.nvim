local M = {}

function M.get(c, opts)
    return {
        SnacksPicker = { fg = c.fg, bg = c.bg },
        SnacksDashboardFile = { fg = c.macro, bg = c.bg },
        SnacksDashboardDir = { fg = c.namespace, bg = c.bg },
        SnacksDashboardHeader = { fg = c.namespace, bg = c.bg },
    }
end

return M
