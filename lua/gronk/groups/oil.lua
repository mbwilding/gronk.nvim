local M = {}

function M.get(c, opts)
    return {
        OilFile = { fg = c.macro },
        OilLink = { fg = c.macro },
        OilLinkTarget = { fg = c.comment },
    }
end

return M
