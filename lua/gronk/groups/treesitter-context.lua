local M = {}

function M.get(c)
    return {
        TreesitterContext = { bg = c.bg, link = c.none },
        TreesitterContentLineNumber = { bg = c.bg, link = c.none },
        TreesitterContextBottom = { underline = true, sp = c.fg },
        TreesitterContextLineNumberBottom = { underline = true, sp = c.fg },
    }
end

return M
