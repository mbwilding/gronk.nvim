local M = {}

function M.get(c)
    return {
        -- NeogitBranch               = { fg = c.magenta },
        -- NeogitRemote               = { fg = c.purple },
        -- NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
        -- NeogitHunkHeaderHighlight  = { bg = c.fg_gutter, fg = c.blue },
        -- NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_gutter, 0.5), fg = c.fg_dark },
        -- NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
        -- NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },

        NeogitChangeAdded                          = { fg = c.method },
        NeogitChangeDeleted                        = { fg = c.error },
        NeogitChangeModified                       = { fg = c.module },
        NeogitChangeRenamed                        = { fg = c.pink },
        NeogitChangeUpdated                        = { fg = c.macro },
        NeogitChangeCopied                         = { fg = c.keyword },
        NeogitChangeNewFile                        = { fg = c.method },
        NeogitChangeUnmerged                       = { fg = c.namespace },
    }
end

return M
