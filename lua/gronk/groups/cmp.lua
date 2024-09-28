local M = {}

function M.get(c, opts)
    return {
        CmpGhostText           = { fg = c.redundant },
        CmpDocumentation       = { fg = c.fg, bg = c.window_bg },
        CmpDocumentationBorder = { fg = c.window_accent, bg = c.window_bg },
        CmpItemAbbr            = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated  = { fg = c.redundant, bg = c.none, strikethrough = true },
        CmpItemAbbrMatch       = { fg = c.macro, bg = c.none },
        CmpItemAbbrMatchFuzzy  = { fg = c.keyword, bg = c.none },
        CmpItemKindConstant    = { fg = c.constant, bg = c.none },
        CmpItemKindCopilot     = { fg = c.namespace, bg = c.none },
        CmpItemKindDefault     = { fg = c.fg, bg = c.none },
        CmpItemKindEnum        = { fg = c.enum, bg = c.none },
        CmpItemKindField       = { fg = c.member, bg = c.none },
        CmpItemKindFunction    = { fg = c.method, bg = c.none },
        CmpItemKindInterface   = { fg = c.interface, bg = c.none },
        CmpItemKindKeyword     = { fg = c.keyword, bg = c.none },
        CmpItemKindMethod      = { fg = c.method, bg = c.none },
        CmpItemKindModule      = { fg = c.module, bg = c.none },
        CmpItemKindReference   = { fg = c.variable, bg = c.none },
        CmpItemKindSnippet     = { fg = c.macro, bg = c.none },
        CmpItemKindStruct      = { fg = c.struct, bg = c.none },
        CmpItemKindText        = { fg = c.fg, bg = c.none },
        CmpItemKindVariable    = { fg = c.variable, bg = c.none },
    }
end

return M
