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

        NeogitChangeAdded             = { bg = c.ok },
        NeogitChangeDeleted           = { bg = c.error },
        NeogitChangeModified          = { bg = c.warn },
        NeogitChangeRenamed           = { bg = c.warn },
        NeogitChangeUpdated           = { bg = c.warn },
        NeogitChangeCopied            = { bg = c.ok },
        NeogitChangeNewFile           = { bg = c.ok },
        NeogitChangeUnmerged          = { bg = c.redundant },

        -- NeogitHunkHeader           = { fg = c.fg, bg = c.bg },
        NeogitDiffAdditions           = { fg = c.ok },
        NeogitDiffDeletions           = { fg = c.error },

        NeogitDiffContext             = { fg = c.fg },
        NeogitDiffAdd                 = { bg = c.ok, fg = c.black },
        NeogitDiffDelete              = { bg = c.error, fg = c.black },

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
