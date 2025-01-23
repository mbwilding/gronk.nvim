local M = {}

function M.get(c, opts)
    return {
        -- General
        DashboardHeader = { fg = c.keyword },
        DashboardFooter = { fg = c.macro },

        -- Hyper theme
        DashboardProjectTitle = { fg = c.keyword },
        DashboardProjectTitleIcon = { fg = c.keyword },
        DashboardProjectIcon = { fg = c.keyword },
        DashboardMruTitle = { fg = c.keyword },
        DashboardMruIcon = { fg = c.keyword },
        DashboardFiles = { fg = c.string },
        DashboardShortCutIcon = { fg = c.macro },

        -- Doom theme
        DashboardDesc = { fg = c.string },
        DashboardKey = { fg = c.keyword },
        DashboardIcon = { fg = c.namespace },
        DashboardShortCut = { fg = c.macro },
    }
end

return M
