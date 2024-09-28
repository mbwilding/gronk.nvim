local M = {}

function M.get(c, opts)
    return {
        -- Theme
        Normal                            = { fg = c.fg, bg = c.bg },                 -- Current window
        NormalFloat                       = { fg = c.fg, bg = c.window_bg },          -- Normal text in floating windows
        NormalNC                          = { fg = c.fg, bg = c.bg },                 -- Non-current window
        NormalSB                          = { fg = c.fg, bg = c.bg },                 -- Normal text in sidebar

        -- Gutter
        CursorLineNr                      = { fg = c.redundant, bg = c.none },          -- Unknown
        LineNr                            = { fg = c.redundant, bg = c.none },          -- Current line number
        LineNrAbove                       = { fg = c.redundant, bg = c.none },          -- Above current line numbers
        LineNrBelow                       = { fg = c.redundant, bg = c.none },          -- Below current line numbers

        -- Generic
        ColorColumn                       = { fg = c.fg, bg = c.window_accent },          -- Columns set with `colorcolumn`
        Conceal                           = { fg = c.redundant, bg = c.none },            -- Grayed out
        Cursor                            = { fg = c.fg, bg = c.macro },                  -- Character under the cursor
        CursorIM                          = { fg = c.fg, bg = c.bg },                     -- Character under the cursor in IME mode
        CursorLine                        = { fg = c.keyword, bg = c.none },              -- Screen line at the cursor
        DiffAdd                           = { fg = c.method },                            -- Diff add
        DiffChange                        = { fg = c.namespace },                         -- Diff change
        DiffDelete                        = { fg = c.error },                             -- Diff delete
        EndOfBuffer                       = { fg = c.bg },                                -- End of buffer `~`
        ErrorMsg                          = { fg = c.error },                             -- Error messages on the commandline
        Folded                            = { fg = c.keyword, bg = c.none },              -- Folded gutter
        IncSearch                         = { fg = c.bg, bg = c.macro },                  -- Yank highlight
        MatchParen                        = { bg = c.namespace },                         -- Matching pair highlight
        StatusLine                        = { fg = c.fg, bg = c.bg },
        StatusLineNC                      = { fg = c.fg, bg = c.bg },
        TabLine                           = { fg = c.fg, bg = c.window_accent },
        TabLineFill                       = { bg = c.bg },
        TabLineSel                        = { fg = c.window_bg, bg = c.keyword },
        VertSplit                         = { fg = c.window_accent, bg = c.window_bg },          -- Vertical split border
        WinBar                            = { fg = c.fg, bg = c.window_bg },
        WinBarNC                          = { fg = c.fg, bg = c.window_bg },
        WinSeparator                      = { fg = c.bg, bg = c.none },           -- Window border
        lCursor                           = { fg = c.fg, bg = c.macro },          -- Character under the cursor when `language-mapping`

        -- NeoVim
        healthError                       = { fg = c.error },
        healthSuccess                     = { fg = c.method },
        healthWarning                     = { fg = c.module },

        -- Diagnostics
        DiagnosticUnnecessary             = { fg = c.redundant },

        -- Treesitter Context
        TreesitterContext                 = { bg = c.bg, link = c.none },
        TreesitterContentLineNumber       = { bg = c.bg, link = c.none },
        TreesitterContextBottom           = { underline = true, sp = c.fg },
        TreesitterContextLineNumberBottom = { underline = true, sp = c.fg },

        -- Mason
        MasonHeader                       = { fg = c.bg, bg = c.macro },
        MasonHighlight                    = { fg = c.keyword, bg = c.none },
        MasonHighlightBlock               = { fg = c.macro, bg = c.window_accent },
        MasonHighlightBlockBold           = { fg = c.window_accent, bg = c.macro },
        MasonMuted                        = { fg = c.redundant, bg = c.none },
        MasonMutedBlock                   = { fg = c.fg, bg = c.window_accent },

        -- File System
        Directory                         = { fg = c.namespace },
        OilFile                           = { fg = c.macro },

        -- Telescope
        TelescopeBorder                   = { fg = c.macro, bg = c.window_bg },
        TelescopeMatching                 = { fg = c.macro, bg = c.window_bg },
        TelescopeNormal                   = { fg = c.namespace, bg = c.window_bg },

        -- Which Key
        WhichKey                          = { fg = c.namespace },
        WhichKeyDesc                      = { fg = c.namespace },
        WhichKeyFloat                     = { bg = c.window_bg },
        WhichKeyGroup                     = { fg = c.namespace },
        WhichKeySeparator                 = { fg = c.namespace },
        WhichKeyValue                     = { fg = c.namespace },

        -- Copilot
        CopilotAnnotation                 = { fg = c.redundant },
        CopilotSuggestion                 = { fg = c.hint },

        -- DAP
        DapBreakpoint                     = { fg = c.error },
        DapLogPoint                       = { fg = c.error },
        DapStopped                        = { fg = c.error },

        -- nvim-notify
        NoiceAttr                         = { fg = c.fg },
        NotifyBackground                  = { bg = c.bg },
        NotifyINFOBody                    = { fg = c.fg },

        -- Hints
        LspInlayHint                      = { fg = c.hint },
        LspLens                           = { fg = c.redundant },
    }
end

return M
