local M = {}

function M.get(c, opts)
    return {
        BlinkCmpItemIdx       = { fg = c.number },

        BlinkCmpKindConstant  = { fg = c.constant, bg = c.none },
        BlinkCmpKindCopilot   = { fg = c.namespace, bg = c.none },
        BlinkCmpKindDefault   = { fg = c.fg, bg = c.none },
        BlinkCmpKindEnum      = { fg = c.enum, bg = c.none },
        BlinkCmpKindField     = { fg = c.member, bg = c.none },
        BlinkCmpKindFunction  = { fg = c.method, bg = c.none },
        BlinkCmpKindInterface = { fg = c.interface, bg = c.none },
        BlinkCmpKindKeyword   = { fg = c.keyword, bg = c.none },
        BlinkCmpKindMethod    = { fg = c.method, bg = c.none },
        BlinkCmpKindModule    = { fg = c.module, bg = c.none },
        BlinkCmpKindReference = { fg = c.variable, bg = c.none },
        BlinkCmpKindSnippet   = { fg = c.macro, bg = c.none },
        BlinkCmpKindStruct    = { fg = c.struct, bg = c.none },
        BlinkCmpKindText      = { fg = c.fg, bg = c.none },
        BlinkCmpKindVariable  = { fg = c.variable, bg = c.none },

        -- BlinkCmpDoc                 = { fg = c.fg, bg = c.bg_float },
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
end

return M
