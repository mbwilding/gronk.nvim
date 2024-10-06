local M = {}

function M.get(c, opts)
    return {
        MarkviewInlineCode = { bg = c.window_bg },
        MarkviewCode = { bg = c.window_bg },
        MarkviewCodeInfo = { bg = c.window_bg },

        -- Headings
        MarkviewHeading1Sign = { fg = c.black, bg = c.attribute },
        MarkviewHeading1 = { fg = c.black, bg = c.attribute },
        MarkviewHeading2Sign = { fg = c.bg, bg = c.namespace },
        MarkviewHeading2 = { fg = c.bg, bg = c.namespace },
        MarkviewHeading3Sign = { fg = c.bg, bg = c.module },
        MarkviewHeading3 = { fg = c.bg, bg = c.module },
        MarkviewHeading4Sign = { fg = c.bg, bg = c.method },
        MarkviewHeading4 = { fg = c.bg, bg = c.method },
        MarkviewHeading5Sign = { fg = c.bg, bg = c.macro },
        MarkviewHeading5 = { fg = c.bg, bg = c.macro },
        MarkviewHeading6Sign = { fg = c.bg, bg = c.struct },
        MarkviewHeading6 = { fg = c.bg, bg = c.struct },
    }
end

return M
