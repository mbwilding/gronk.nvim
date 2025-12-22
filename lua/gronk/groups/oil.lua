local M = {}

function M.get(c, opts)
    return {
        OilFile = { fg = c.macro },
        OilLink = { fg = c.keyword },
        OilLinkTarget = { fg = c.comment },
        -- OilGitAdded = { fg = c.ok },
        -- OilGitModified = { fg = c.info },
        -- OilGitRenamed = { fg = c.hint },
        -- OilGitUntracked = { fg = c.warn },
        -- OilGitIgnored = { fg = c.redundant },
    }
end

return M
