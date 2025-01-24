local M = {}

local kinds = require("gronk.groups.kinds")

function M.get(c, opts)
    local highlights = {
        CmpGhostText = { fg = c.redundant },
        CmpDocumentation = { fg = c.fg, bg = c.window_bg },
        CmpDocumentationBorder = { fg = c.window_accent, bg = c.window_bg },
        CmpItemAbbr = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated = { fg = c.redundant, bg = c.none, strikethrough = true },
        CmpItemAbbrMatch = { fg = c.macro, bg = c.none },
        CmpItemAbbrMatchFuzzy = { fg = c.keyword, bg = c.none },
    }

    require("gronk.groups.kinds").merge(c, highlights, "CmpItemKind")

    return highlights
end

return M
