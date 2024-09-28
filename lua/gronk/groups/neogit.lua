local M = {}

function M.get(c, opts)
    return {
        NeogitBranch               = { fg = c.macro },
        NeogitRemote               = { fg = c.struct },
        -- NeogitHunkHeader           = { bg = c.window_accent, fg = c.fg },
        -- NeogitHunkHeaderHighlight  = { bg = c.redundant, fg = c.keyword },
        NeogitDiffContextHighlight = { bg = c.interface, fg = c.error },
        NeogitDiffDeleteHighlight  = { fg = c.fg, bg = c.error },
        NeogitDiffAddHighlight     = { fg = c.fg, bg = c.good },

        NeogitChangeAdded = { fg = c.good },
        NeogitChangeDeleted = { fg = c.error },
        NeogitChangeModified = { fg = c.warn },
        NeogitChangeRenamed = { fg = c.warn },
        NeogitChangeUpdated = { fg = c.warn },
        NeogitChangeCopied = { fg = c.good },
        NeogitChangeNewFile = { fg = c.good },
        NeogitChangeUnmerged = { fg = c.redundant },
    }
end

return M
