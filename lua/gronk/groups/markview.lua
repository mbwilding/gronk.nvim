local M = {}

function M.get(c, opts)
    return {
        MarkviewInlineCode = { bg = c.window_bg },
        MarkviewCode = { bg = c.window_bg },
        MarkviewCodeInfo = { bg = c.window_bg },

        -- Headings
        MarkviewHeading1Sign = { bg = c.attribute },
        MarkviewHeading1 = { bg = c.attribute },
        MarkviewHeading2Sign = { bg = c.namespace },
        MarkviewHeading2 = { bg = c.namespace },
        MarkviewHeading3Sign = { bg = c.module },
        MarkviewHeading3 = { bg = c.module },
        MarkviewHeading4Sign = { bg = c.method },
        MarkviewHeading4 = { bg = c.method },
        MarkviewHeading5Sign = { bg = c.macro },
        MarkviewHeading5 = { bg = c.macro },
        MarkviewHeading6Sign = { bg = c.struct },
        MarkviewHeading6 = { bg = c.struct },
    }
end

return M
