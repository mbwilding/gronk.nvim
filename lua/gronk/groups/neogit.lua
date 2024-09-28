local M = {}

function M.get(c, opts)
    return {
        NeogitBranch               = { fg = c.macro },
        NeogitRemote               = { fg = c.struct },
        -- NeogitHunkHeader           = { fg = c.fg, bg = c.window_accent },
        -- NeogitHunkHeaderHighlight  = { fg = c.keyword, bg = c.redundant },
        NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg },
        NeogitDiffDeleteHighlight  = { fg = c.fg, bg = c.error },
        NeogitDiffAddHighlight     = { fg = c.fg, bg = c.good },

        NeogitChangeAdded          = { fg = c.good },
        NeogitChangeDeleted        = { fg = c.error },
        NeogitChangeModified       = { fg = c.warn },
        NeogitChangeRenamed        = { fg = c.warn },
        NeogitChangeUpdated        = { fg = c.warn },
        NeogitChangeCopied         = { fg = c.good },
        NeogitChangeNewFile        = { fg = c.good },
        NeogitChangeUnmerged       = { fg = c.redundant },
    }
end

return M
