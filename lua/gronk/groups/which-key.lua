local M = {}

function M.get(c, opts)
    return {
        -- WhichKeyNormal = { bg = c.bg_sidebar },

        WhichKey = { fg = c.namespace },
        WhichKeyDesc = { fg = c.namespace },
        WhichKeyFloat = { bg = c.window_bg },
        WhichKeyGroup = { fg = c.namespace },
        WhichKeySeparator = { fg = c.namespace },
        WhichKeyValue = { fg = c.namespace },
    }
end

return M
