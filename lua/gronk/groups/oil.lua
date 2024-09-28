local M = {}

function M.get(c, opts)
    return {
        OilFile = { fg = c.macro },
    }
end

return M
