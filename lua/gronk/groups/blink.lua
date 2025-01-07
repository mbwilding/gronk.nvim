local M = {}

local kinds = require("gronk.groups.kinds")

function M.get(c, opts)
    local highlights = {
        BlinkCmpItemIdx = { fg = c.number },

        BlinkCmpDoc     = { fg = c.fg, bg = c.none },
        -- BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
        -- BlinkCmpGhostText           = { fg = c.terminal_black },
        -- BlinkCmpKindCodeium         = { fg = c.teal, bg = c.none },
        -- BlinkCmpKindSupermaven      = { fg = c.teal, bg = c.none },
        -- BlinkCmpKindTabNine         = { fg = c.teal, bg = c.none },
        -- BlinkCmpLabel               = { fg = c.fg, bg = c.none },
        -- BlinkCmpLabelDeprecated     = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
        -- BlinkCmpLabelMatch          = { fg = c.blue1, bg = c.none },
        -- BlinkCmpMenu                = { fg = c.fg, bg = c.bg_float },
        -- BlinkCmpMenuBorder          = { fg = c.border_highlight, bg = c.bg_float },
        -- BlinkCmpSignatureHelp       = { fg = c.fg, bg = c.bg_float },
        -- BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
    }

    kinds.merge(c, highlights, "BlinkCmpKind")

    return highlights
end

return M
