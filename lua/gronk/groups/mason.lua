local M = {}

function M.get(c)
    return {
        MasonHeader = { fg = c.bg, bg = c.macro },
        MasonHighlight = { fg = c.keyword, bg = c.none },
        MasonHighlightBlock = { fg = c.macro, bg = c.window_accent },
        MasonHighlightBlockBold = { fg = c.window_accent, bg = c.macro },
        MasonMuted = { fg = c.redundant, bg = c.none },
        MasonMutedBlock = { fg = c.fg, bg = c.window_accent },
    }
end

return M
