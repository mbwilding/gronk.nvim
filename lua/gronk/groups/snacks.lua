local M = {}

function M.get(c, opts)
    return {
        SnacksPicker = { bg = c.bg },
        -- SnacksNormal = { link = "NormalFloat" },                      -- Normal for the float window
        -- SnacksWinBar = { link = "Title" },                            -- Title of the window
        -- SnacksBackdrop = { bg = c.none },                             -- Backdrop
        -- SnacksNormalNC = { link = "NormalFloat" },                    -- Normal for non-current windows
        -- SnacksWinBarNC = { link = "SnacksWinBar" },                   -- Title for non-current windows
        -- SnacksScratchKey = { link = "DiagnosticVirtualText" },        -- Keymap help in the footer
        -- SnacksScratchDesc = { link = "DiagnosticInfo" },              -- Keymap help desc in the footer
        -- SnacksNotifierInfo = { bg = c.none },                         -- Notification window for Info
        -- SnacksNotifierWarn = { bg = c.none },                         -- Notification window for Warn
        -- SnacksNotifierDebug = { bg = c.none },                        -- Notification window for Debug
        -- SnacksNotifierError = { bg = c.none },                        -- Notification window for Error
        -- SnacksNotifierTrace = { bg = c.none },                        -- Notification window for Trace
        -- SnacksNotifierIconInfo = { bg = c.none },                     -- Icon for Info notification
        -- SnacksNotifierIconWarn = { bg = c.none },                     -- Icon for Warn notification
        -- SnacksNotifierIconDebug = { bg = c.none },                    -- Icon for Debug notification
        -- SnacksNotifierIconError = { bg = c.none },                    -- Icon for Error notification
        -- SnacksNotifierIconTrace = { bg = c.none },                    -- Icon for Trace notification
        -- SnacksNotifierTitleInfo = { bg = c.none },                    -- Title for Info notification
        -- SnacksNotifierTitleWarn = { bg = c.none },                    -- Title for Warn notification
        -- SnacksNotifierTitleDebug = { bg = c.none },                   -- Title for Debug notification
        -- SnacksNotifierTitleError = { bg = c.none },                   -- Title for Error notification
        -- SnacksNotifierTitleTrace = { bg = c.none },                   -- Title for Trace notification
        -- SnacksNotifierBorderInfo = { bg = c.none },                   -- Border for Info notification
        -- SnacksNotifierBorderWarn = { bg = c.none },                   -- Border for Warn notification
        -- SnacksNotifierBorderDebug = { bg = c.none },                  -- Border for Debug notification
        -- SnacksNotifierBorderError = { bg = c.none },                  -- Border for Error notification
        -- SnacksNotifierBorderTrace = { bg = c.none },                  -- Border for Trace notification
        -- SnacksNotifierFooterInfo = { link = "DiagnosticInfo" },       -- Footer for Info notification
        -- SnacksNotifierFooterWarn = { link = "DiagnosticWarn" },       -- Footer for Warn notification
        -- SnacksNotifierFooterDebug = { link = "DiagnosticHint" },      -- Footer for Debug notification
        -- SnacksNotifierFooterError = { link = "DiagnosticError" },     -- Footer for Error notification
        -- SnacksNotifierFooterTrace = { link = "DiagnosticHint" },      -- Footer for Trace notification
        -- SnacksDashboardNormal = { link = "Normal" },                  -- Normal for the dashboard
        -- SnacksDashboardDesc = { link = "Special" },                   -- Description text in dashboard
        SnacksDashboardFile = { fg = c.macro, bg = c.none }, -- Dashboard file items
        SnacksDashboardDir = { fg = c.namespace, bg = c.none }, -- Daskboard directory items
        -- SnacksDashboardFooter = { link = "Title" },                   -- Dashboard footer text
        SnacksDashboardHeader = { fg = c.namespace }, -- Dashboard header text
        -- SnacksDashboardIcon = { link = "Special" },                   -- Dashboard icons
        -- SnacksDashboardKey = { link = "Number" },                     -- Keybind text
        -- SnacksDashboardTerminal = { link = "SnacksDashboardNormal" }, -- Terminal text
        -- SnacksDashboardSpecial = { link = "Special" },                -- Special elements
        -- SnacksDashboardTitle = { link = "Title" },                    -- Title text
    }
end

return M
