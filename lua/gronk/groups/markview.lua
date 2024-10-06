local M = {}

function M.get(c, opts)
    return {
        MarkviewInlineCode = { bg = c.window_bg },
        MarkviewCode = { bg = c.window_bg },
        MarkviewCodeInfo = { bg = c.window_bg },

        -- Headings
        MarkviewHeading1Sign = { fg = c.attribute },
        MarkviewHeading1 = { fg = c.black, bg = c.attribute, bold = true },
        MarkviewHeading2Sign = { fg = c.namespace },
        MarkviewHeading2 = { fg = c.black, bg = c.namespace, bold = true },
        MarkviewHeading3Sign = { fg = c.module },
        MarkviewHeading3 = { fg = c.black, bg = c.module, bold = true },
        MarkviewHeading4Sign = { fg = c.method },
        MarkviewHeading4 = { fg = c.black, bg = c.method, bold = true },
        MarkviewHeading5Sign = { fg = c.macro },
        MarkviewHeading5 = { fg = c.black, bg = c.macro, bold = true },
        MarkviewHeading6Sign = { fg = c.struct },
        MarkviewHeading6 = { fg = c.black, bg = c.struct, bold = true },
    }
end

return M
