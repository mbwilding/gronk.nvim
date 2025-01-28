local M = {}

function M.get(c, opts)
    return {
        NoiceAttr = { fg = c.fg },
        NoiceFormatProgessDone = { fg = c.macro },
    }
end

return M
