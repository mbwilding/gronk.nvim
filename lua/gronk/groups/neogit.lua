local M = {}

function M.get(c, opts)
    return {
        NeogitHunkHeaderHighlight     = { fg = c.fg, bg = c.bg },
        NeogitDiffContextHighlight    = { fg = c.fg, bg = c.bg },
        NeogitDiffDeleteHighlight     = { fg = c.error, bg = c.bg },
        NeogitDiffAddHighlight        = { fg = c.ok, bg = c.bg },

        NeogitBranch                  = { fg = c.macro },
        NeogitBranchHead              = { fg = c.struct },
        NeogitRemote                  = { fg = c.struct },
        NeogitObjectId                = { fg = c.string },
        NeogitHead                    = { fg = c.keyword },
        NeogitStash                   = { fg = c.redundant },
        NeogitFold                    = { fg = c.redundant },
        NeogitRebaseDone              = { fg = c.ok },
        NeogitTagName                 = { fg = c.comment },
        NeogitTagDistance             = { fg = c.number },
        NeogitStatusHEAD              = { fg = c.macro },

        NeogitSubtleText              = { fg = c.keyword },

        NeogitSectionHeader           = { fg = c.module },
        NeogitSectionHeaderCount      = { fg = c.number },

        NeogitChangeAdded             = { fg = c.ok },
        NeogitChangeDeleted           = { fg = c.error },
        NeogitChangeModified          = { fg = c.warn },
        NeogitChangeRenamed           = { fg = c.warn },
        NeogitChangeUpdated           = { fg = c.warn },
        NeogitChangeCopied            = { fg = c.ok },
        NeogitChangeNewFile           = { fg = c.ok },
        NeogitChangeUnmerged          = { fg = c.redundant },

        -- NeogitHunkHeader           = { fg = c.fg, bg = c.bg },
        NeogitDiffAdditions           = { fg = c.ok },
        NeogitDiffDeletions           = { fg = c.error },

        NeogitDiffContext             = { fg = c.fg, bg = c.bg },
        NeogitDiffAdd                 = { fg = c.ok },
        NeogitDiffDelete              = { fg = c.error },

        NeogitSignatureGood           = { fg = c.ok },
        NeogitSignatureGoodUnknown    = { fg = c.ok },
        NeogitSignatureGoodExpired    = { fg = c.ok },
        NeogitSignatureGoodExpiredKey = { fg = c.ok },
        NeogitSignatureGoodRevokedKey = { fg = c.ok },
        NeogitSignatureBad            = { fg = c.error },
        NeogitSignatureMissing        = { fg = c.warn },
        NeogitSignatureNone           = { fg = c.redundant },
    }
end

return M
