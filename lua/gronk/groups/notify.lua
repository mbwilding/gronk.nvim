local M = {}

function M.get(c)
    return {
        NotifyBackground = { bg = c.bg },
        NotifyINFOBody   = { fg = c.fg },
    }
end

return M
