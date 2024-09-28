local M = {}

function M.get(c, opts)
    return {
        NotifyBackground = { bg = c.bg },
        NotifyINFOBody = { fg = c.fg },
    }
end

return M
