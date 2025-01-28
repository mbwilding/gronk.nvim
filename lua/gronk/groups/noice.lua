local M = {}

function M.get(c, opts)
    return {
        NoiceAttr = { fg = c.fg },
        NoiceFormatProgressDone = { bg = c.macro },
    }
end

return M
