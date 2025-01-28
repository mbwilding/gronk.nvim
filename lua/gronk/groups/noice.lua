local M = {}

function M.get(c, opts)
    return {
        NoiceAttr = { fg = c.fg },
        NoiceFormatProgressDone = { fg = c.macro },
    }
end

return M
