local M = {}

function M.get(c, opts)
    return {
        -- TelescopeBorder         = { fg = c.border_highlight, bg = c.bg_float },
        -- TelescopeNormal         = { fg = c.fg, bg = c.bg_float },
        -- TelescopePromptBorder   = { fg = c.orange, bg = c.bg_float },
        -- TelescopePromptTitle    = { fg = c.orange, bg = c.bg_float },
        -- TelescopeResultsComment = { fg = c.dark3 },

        TelescopeBorder         = { fg = c.macro, bg = c.window_bg },
        TelescopeMatching       = { fg = c.macro, bg = c.window_bg },
        TelescopeNormal         = { fg = c.namespace, bg = c.window_bg },
    }
end

return M
