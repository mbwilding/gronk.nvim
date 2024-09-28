local M = {}

M.url = "https://github.com/OXY2DEV/markview.nvim"

function M.get(c)
    return {
        MarkviewInlineCode = { bg = c.window_bg },
        MarkviewCode       = { bg = c.window_bg },
        MarkviewCodeInfo   = { bg = c.window_bg },
    }
end

return M
