local M = {}

function M.get(c, opts)
    local highlights = {
        BlinkCmpItemIdx             = { fg = c.number },

        -- BlinkCmpDoc              = { fg = c.fg, bg = c.none },
        BlinkCmpDocBorder           = { fg = c.macro, bg = c.window_bg },
        -- BlinkCmpGhostText        = { fg = c.terminal_black },
        -- BlinkCmpKindCodeium      = { fg = c.teal, bg = c.none },
        -- BlinkCmpKindSupermaven   = { fg = c.teal, bg = c.none },
        -- BlinkCmpKindTabNine      = { fg = c.teal, bg = c.none },
        -- BlinkCmpLabel            = { fg = c.fg, bg = c.none },
        -- BlinkCmpLabelDeprecated  = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
        -- BlinkCmpLabelMatch       = { fg = c.blue1, bg = c.none },
        -- BlinkCmpMenu             = { fg = c.fg, bg = c.bg_float },
        BlinkCmpMenuBorder          = { fg = c.macro, bg = c.window_bg },
        -- BlinkCmpSignatureHelp    = { fg = c.fg, bg = c.bg_float },
        BlinkCmpSignatureHelpBorder = { fg = c.macro, bg = c.window_bg },
    }

    require("gronk.groups.kinds").merge(c, highlights, "BlinkCmpKind")

    return highlights
end

return M
