local M = {}

function M.get(c, opts)
    return {
        -- NeogitHunkHeader           = { fg = c.fg, bg = c.bg },
        -- NeogitHunkHeaderHighlight  = { fg = c.fg, bg = c.bg },
        -- NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg },
        -- NeogitDiffDeleteHighlight  = { fg = c.error, bg = c.bg },
        -- NeogitDiffAddHighlight     = { fg = c.good, bg = c.bg },

        NeogitBranch             = { fg = c.macro },
        NeogitBranchHead         = { fg = c.interface },
        NeogitRemote             = { fg = c.struct },
        NeogitObjectId           = { fg = c.string },
        NeogitHead               = { fg = c.keyword },
        NeogitStash              = { fg = c.redundant },
        NeogitFold               = { fg = c.redundant },
        NeogitRebaseDone         = { fg = c.good },
        NeogitTagName            = { fg = c.comment },
        NeogitTagDistance        = { fg = c.number },
        NeogitStatusHEAD         = { fg = c.fg },

        NeogitSectionHeader      = { fg = c.module },
        NeogitSectionHeaderCount = { fg = c.number },

        NeogitChangeAdded        = { fg = c.good },
        NeogitChangeDeleted      = { fg = c.error },
        NeogitChangeModified     = { fg = c.warn },
        NeogitChangeRenamed      = { fg = c.warn },
        NeogitChangeUpdated      = { fg = c.warn },
        NeogitChangeCopied       = { fg = c.good },
        NeogitChangeNewFile      = { fg = c.good },
        NeogitChangeUnmerged     = { fg = c.redundant },
    }
end

return M
