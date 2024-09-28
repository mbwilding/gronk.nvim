local M = {}

function M.get(c, opts)
    return {
        -- NeogitBranch               = { fg = c.magenta },
        -- NeogitRemote               = { fg = c.purple },
        -- NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
        -- NeogitHunkHeaderHighlight  = { bg = c.fg_gutter, fg = c.blue },
        -- NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_gutter, 0.5), fg = c.fg_dark },
        -- NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
        -- NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },

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
