local M = {}

function M.get(c, opts)
    return {
        MarkviewInlineCode = { bg = c.window_bg },
        MarkviewCode = { bg = c.window_bg },
        MarkviewCodeInfo = { bg = c.window_bg },

        -- Headings
        MarkviewHeading1Sign = { fg = c.attribute },
        MarkviewHeading1 = { fg = c.black, bg = c.attribute, style = "bold" },
        MarkviewHeading2Sign = { fg = c.namespace },
        MarkviewHeading2 = { fg = c.black, bg = c.namespace, style = "bold" },
        MarkviewHeading3Sign = { fg = c.module },
        MarkviewHeading3 = { fg = c.black, bg = c.module, style = "bold" },
        MarkviewHeading4Sign = { fg = c.method },
        MarkviewHeading4 = { fg = c.black, bg = c.method, style = "bold" },
        MarkviewHeading5Sign = { fg = c.macro },
        MarkviewHeading5 = { fg = c.black, bg = c.macro, style = "bold" },
        MarkviewHeading6Sign = { fg = c.struct },
        MarkviewHeading6 = { fg = c.black, bg = c.struct, style = "bold" },
    }
end

return M
