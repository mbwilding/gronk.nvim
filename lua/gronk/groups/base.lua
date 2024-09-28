local M = {}

function M.get(c, opts)
    return {
        -- Theme
        Normal                                     = { fg = c.fg, bg = c.bg },        -- Current window
        NormalFloat                                = { fg = c.fg, bg = c.window_bg }, -- Normal text in floating windows
        NormalNC                                   = { fg = c.fg, bg = c.bg },        -- Non-current window
        NormalSB                                   = { fg = c.fg, bg = c.bg },        -- Normal text in sidebar

        -- Gutter
        CursorLineNr                               = { fg = c.redundant, bg = c.none }, -- Unknown
        LineNr                                     = { fg = c.redundant, bg = c.none }, -- Current line number
        LineNrAbove                                = { fg = c.redundant, bg = c.none }, -- Above current line numbers
        LineNrBelow                                = { fg = c.redundant, bg = c.none }, -- Below current line numbers

        -- Generic
        ColorColumn                                = { fg = c.fg, bg = c.window_accent }, -- Columns set with `colorcolumn`
        Conceal                                    = { fg = c.redundant, bg = c.none },   -- Grayed out
        Cursor                                     = { fg = c.fg, bg = c.macro },         -- Character under the cursor
        CursorIM                                   = { fg = c.fg, bg = c.bg },            -- Character under the cursor in IME mode
        CursorLine                                 = { fg = c.keyword, bg = c.none },     -- Screen line at the cursor
        DiffAdd                                    = { fg = c.method },                   -- Diff add
        DiffChange                                 = { fg = c.namespace },                -- Diff change
        DiffDelete                                 = { fg = c.error },                    -- Diff delete
        EndOfBuffer                                = { fg = c.bg },                       -- End of buffer `~`
        ErrorMsg                                   = { fg = c.error },                    -- Error messages on the commandline
        Folded                                     = { fg = c.keyword, bg = c.none },     -- Folded gutter
        IncSearch                                  = { fg = c.bg, bg = c.macro },         -- Yank highlight
        MatchParen                                 = { bg = c.namespace },                -- Matching pair highlight
        StatusLine                                 = { fg = c.fg, bg = c.bg },
        StatusLineNC                               = { fg = c.fg, bg = c.bg },
        TabLine                                    = { fg = c.fg, bg = c.window_accent },
        TabLineFill                                = { bg = c.bg },
        TabLineSel                                 = { fg = c.window_bg, bg = c.keyword },
        VertSplit                                  = { fg = c.window_accent, bg = c.window_bg }, -- Vertical split border
        WinBar                                     = { fg = c.fg, bg = c.window_bg },
        WinBarNC                                   = { fg = c.fg, bg = c.window_bg },
        WinSeparator                               = { fg = c.bg, bg = c.none },  -- Window border
        lCursor                                    = { fg = c.fg, bg = c.macro }, -- Character under the cursor when `language-mapping`

        -- NeoVim
        healthError                                = { fg = c.error },
        healthSuccess                              = { fg = c.method },
        healthWarning                              = { fg = c.module },

        -- NeoGit
        NeogitChangeAdded                          = { fg = c.method },
        NeogitChangeDeleted                        = { fg = c.error },
        NeogitChangeModified                       = { fg = c.module },
        NeogitChangeRenamed                        = { fg = c.pink },
        NeogitChangeUpdated                        = { fg = c.macro },
        NeogitChangeCopied                         = { fg = c.keyword },
        NeogitChangeNewFile                        = { fg = c.method },
        NeogitChangeUnmerged                       = { fg = c.namespace },

        -- Diagnostics
        DiagnosticUnnecessary                      = { fg = c.redundant },

        -- Cmp
        CmpGhostText                               = { fg = c.redundant },
        CmpDocumentation                           = { fg = c.fg, bg = c.window_bg },
        CmpDocumentationBorder                     = { fg = c.window_accent, bg = c.window_bg },
        CmpItemAbbr                                = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated                      = { fg = c.redundant, bg = c.none, strikethrough = true },
        CmpItemAbbrMatch                           = { fg = c.macro, bg = c.none },
        CmpItemAbbrMatchFuzzy                      = { fg = c.keyword, bg = c.none },
        CmpItemKindConstant                        = { fg = c.constant, bg = c.none },
        CmpItemKindCopilot                         = { fg = c.namespace, bg = c.none },
        CmpItemKindDefault                         = { fg = c.fg, bg = c.none },
        CmpItemKindEnum                            = { fg = c.enum, bg = c.none },
        CmpItemKindField                           = { fg = c.member, bg = c.none },
        CmpItemKindFunction                        = { fg = c.method, bg = c.none },
        CmpItemKindInterface                       = { fg = c.interface, bg = c.none },
        CmpItemKindKeyword                         = { fg = c.keyword, bg = c.none },
        CmpItemKindMethod                          = { fg = c.method, bg = c.none },
        CmpItemKindModule                          = { fg = c.module, bg = c.none },
        CmpItemKindReference                       = { fg = c.variable, bg = c.none },
        CmpItemKindSnippet                         = { fg = c.macro, bg = c.none },
        CmpItemKindStruct                          = { fg = c.struct, bg = c.none },
        CmpItemKindText                            = { fg = c.fg, bg = c.none },
        CmpItemKindVariable                        = { fg = c.variable, bg = c.none },

        -- Treesitter Context
        TreesitterContext                          = { bg = c.bg, link = c.none },
        TreesitterContentLineNumber                = { bg = c.bg, link = c.none },
        TreesitterContextBottom                    = { underline = true, sp = c.fg },
        TreesitterContextLineNumberBottom          = { underline = true, sp = c.fg },

        -- Mason
        MasonHeader                                = { fg = c.bg, bg = c.macro },
        MasonHighlight                             = { fg = c.keyword, bg = c.none },
        MasonHighlightBlock                        = { fg = c.macro, bg = c.window_accent },
        MasonHighlightBlockBold                    = { fg = c.window_accent, bg = c.macro },
        MasonMuted                                 = { fg = c.redundant, bg = c.none },
        MasonMutedBlock                            = { fg = c.fg, bg = c.window_accent },

        -- File System
        Directory                                  = { fg = c.namespace },
        OilFile                                    = { fg = c.macro },

        -- Telescope
        TelescopeBorder                            = { fg = c.macro, bg = c.window_bg },
        TelescopeMatching                          = { fg = c.macro, bg = c.window_bg },
        TelescopeNormal                            = { fg = c.namespace, bg = c.window_bg },

        -- Which Key
        WhichKey                                   = { fg = c.namespace },
        WhichKeyDesc                               = { fg = c.namespace },
        WhichKeyFloat                              = { bg = c.window_bg },
        WhichKeyGroup                              = { fg = c.namespace },
        WhichKeySeparator                          = { fg = c.namespace },
        WhichKeyValue                              = { fg = c.namespace },

        -- Copilot
        CopilotAnnotation                          = { fg = c.redundant },
        CopilotSuggestion                          = { fg = c.hint },

        -- DAP
        DapBreakpoint                              = { fg = c.error },
        DapLogPoint                                = { fg = c.error },
        DapStopped                                 = { fg = c.error },

        -- nvim-notify
        NoiceAttr                                  = { fg = c.fg },
        NotifyBackground                           = { bg = c.bg },
        NotifyINFOBody                             = { fg = c.fg },

        -- Hints
        LspInlayHint                               = { fg = c.hint },
        LspLens                                    = { fg = c.redundant },

        -- Markdown
        MarkviewInlineCode                         = { bg = c.window_bg },
        MarkviewCode                               = { bg = c.window_bg },
        MarkviewCodeInfo                           = { bg = c.window_bg },

        -- Code
        Comment                                    = { fg = c.comment },
        Delimiter                                  = { fg = c.delimiter },
        Function                                   = { fg = c.method },
        Identifier                                 = { fg = c.member },
        Number                                     = { fg = c.number },
        Operator                                   = { fg = c.operator },
        Special                                    = { fg = c.keyword },
        Statement                                  = { fg = c.keyword },
        String                                     = { fg = c.string },
        Type                                       = { fg = c.struct },
        ["@attribute"]                             = { fg = c.attribute },
        ["@boolean"]                               = { fg = c.keyword },
        ["@character"]                             = { fg = c.number },
        ["@constant"]                              = { fg = c.constant },
        ["@constant.macro"]                        = { fg = c.macro },
        ["@constructor"]                           = { fg = c.struct },
        ["@function.macro"]                        = { fg = c.macro },
        ["@lsp.mod.declaration"]                   = { fg = c.module },
        ["@lsp.mod.library"]                       = { fg = c.module },
        ["@lsp.type.fieldName"]                    = { fg = c.member },
        ["@lsp.type.formatSpecifier"]              = { fg = c.struct },
        ["@lsp.type.interface"]                    = { fg = c.interface },
        ["@lsp.type.invalidEscapeSequence"]        = { fg = c.error },
        ["@lsp.type.keyword"]                      = { fg = c.keyword },
        ["@lsp.typemod.decorator.attribute"]       = { fg = c.attribute },
        ["@lsp.typemod.derive"]                    = { fg = c.interface },
        ["@lsp.typemod.enum"]                      = { fg = c.enum },
        ["@lsp.typemod.enumMember"]                = { fg = c.constant },
        ["@lsp.typemod.function"]                  = { fg = c.method },
        ["@lsp.typemod.interface.library"]         = { fg = c.interface },
        ["@lsp.typemod.macro"]                     = { fg = c.macro },
        ["@lsp.typemod.method"]                    = { fg = c.method },
        ["@lsp.typemod.operator.controlFlow"]      = { fg = c.keyword },
        ["@lsp.typemod.property"]                  = { fg = c.member },
        ["@lsp.typemod.property.declaration"]      = { fg = c.member },
        ["@lsp.typemod.struct"]                    = { fg = c.struct },
        ["@lsp.typemod.typeAlias.library"]         = { fg = c.struct },
        ["@lsp.typemod.typeParameter.declaration"] = { fg = c.struct },
        ["@lsp.typemod.variable"]                  = { fg = c.variable },
        ["@module"]                                = { fg = c.namespace },
        ["@string.escape"]                         = { fg = c.escape },
        ["@variable"]                              = { fg = c.variable },
        ["@variable.member"]                       = { fg = c.member },

        -- Rust
        ["@lsp.mod.declaration.rust"]              = { fg = c.fg },
        ["@lsp.mod.mutable"]                       = { underline = true },
        ["@lsp.mod.unsafe"]                        = { fg = c.error },
        ["@lsp.typemod.interface.declaration"]     = { fg = c.interface },
        ["@lsp.typemod.namespace.crateRoot"]       = { fg = c.namespace },
        ["@type.qualifier.rust"]                   = { fg = c.keyword, underline = true },

        -- CSharp
        ["@lsp.type.stringEscapeCharacter.cs"]     = { fg = c.escape },
    }
end

return M
