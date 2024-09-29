local M = {}

function M.get(c, opts)
    return {
        OilFile = { fg = c.macro },
        OilLink = { fg = c.keyword },
        OilLinkTarget = { fg = c.comment },
    }
end

return M
