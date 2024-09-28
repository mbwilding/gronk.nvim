local M = {}

function M.get(c, opts)
    return {
        ColorColumn           = { fg = c.fg, bg = c.window_accent }, -- Columns set with `colorcolumn`
        Conceal               = { fg = c.redundant, bg = c.none },   -- Grayed out
        Cursor                = { fg = c.fg, bg = c.macro },         -- Character under the cursor
        CursorIM              = { fg = c.fg, bg = c.bg },            -- Character under the cursor in IME mode
        CursorLine            = { fg = c.keyword, bg = c.none },     -- Screen line at the cursor
        CursorLineNr          = { fg = c.redundant, bg = c.none }, -- Unknown
        DiagnosticUnnecessary = { fg = c.redundant },
        DiffAdd               = { fg = c.method },                   -- Diff add
        DiffChange            = { fg = c.namespace },                -- Diff change
        DiffDelete            = { fg = c.error },                    -- Diff delete
        Directory             = { fg = c.namespace },
        EndOfBuffer           = { fg = c.bg },                       -- End of buffer `~`
        ErrorMsg              = { fg = c.error },                    -- Error messages on the commandline
        Folded                = { fg = c.keyword, bg = c.none },     -- Folded gutter
        IncSearch             = { fg = c.bg, bg = c.macro },         -- Yank highlight
        LineNr                = { fg = c.redundant, bg = c.none }, -- Current line number
        LineNrAbove           = { fg = c.redundant, bg = c.none }, -- Above current line numbers
        LineNrBelow           = { fg = c.redundant, bg = c.none }, -- Below current line numbers
        LspInlayHint          = { fg = c.hint },
        MatchParen            = { bg = c.namespace },                -- Matching pair highlight
        Normal                = { fg = c.fg, bg = c.bg },        -- Current window
        NormalFloat           = { fg = c.fg, bg = c.window_bg }, -- Normal text in floating windows
        NormalNC              = { fg = c.fg, bg = c.bg },        -- Non-current window
        NormalSB              = { fg = c.fg, bg = c.bg },        -- Normal text in sidebar
        StatusLine            = { fg = c.fg, bg = c.bg },
        StatusLineNC          = { fg = c.fg, bg = c.bg },
        TabLine               = { fg = c.fg, bg = c.window_accent },
        TabLineFill           = { bg = c.bg },
        TabLineSel            = { fg = c.window_bg, bg = c.keyword },
        VertSplit             = { fg = c.window_accent, bg = c.window_bg }, -- Vertical split border
        WinBar                = { fg = c.fg, bg = c.window_bg },
        WinBarNC              = { fg = c.fg, bg = c.window_bg },
        WinSeparator          = { fg = c.bg, bg = c.none },  -- Window border
        healthError           = { fg = c.error },
        healthSuccess         = { fg = c.method },
        healthWarning         = { fg = c.module },
        lCursor               = { fg = c.fg, bg = c.macro }, -- Character under the cursor when `language-mapping`
    }
end

return M
