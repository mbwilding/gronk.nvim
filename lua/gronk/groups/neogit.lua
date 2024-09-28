local M = {}

function M.get(c, opts)
    return {
        NeogitHunkHeaderHighlight  = { fg = c.fg, bg = c.bg },
        NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg },
        NeogitDiffDeleteHighlight  = { fg = c.error, bg = c.bg },
        NeogitDiffAddHighlight     = { fg = c.good, bg = c.bg },

        NeogitBranch               = { fg = c.macro },
        NeogitBranchHead           = { fg = c.struct },
        NeogitRemote               = { fg = c.struct },
        NeogitObjectId             = { fg = c.string },
        NeogitHead                 = { fg = c.keyword },
        NeogitStash                = { fg = c.redundant },
        NeogitFold                 = { fg = c.redundant },
        NeogitRebaseDone           = { fg = c.good },
        NeogitTagName              = { fg = c.comment },
        NeogitTagDistance          = { fg = c.number },
        NeogitStatusHEAD           = { fg = c.fg },

        NeogitSubtleText           = { fg = c.keyword },

        NeogitSectionHeader        = { fg = c.module },
        NeogitSectionHeaderCount   = { fg = c.number },

        NeogitChangeAdded          = { fg = c.good },
        NeogitChangeDeleted        = { fg = c.error },
        NeogitChangeModified       = { fg = c.warn },
        NeogitChangeRenamed        = { fg = c.warn },
        NeogitChangeUpdated        = { fg = c.warn },
        NeogitChangeCopied         = { fg = c.good },
        NeogitChangeNewFile        = { fg = c.good },
        NeogitChangeUnmerged       = { fg = c.redundant },

        -- NeogitHunkHeader      = { fg = c.fg, bg = c.bg },
        NeogitDiffAdditions        = { fg = c.good },
        NeogitDiffDeletions        = { fg = c.error },

        NeogitDiffAdd              = { fg = c.good },
        NeogitDiffDelete           = { fg = c.error },
    }
end

return M
