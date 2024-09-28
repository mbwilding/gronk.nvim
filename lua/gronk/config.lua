local M = {}

M.defaults = {
    style = "rider",     -- The theme comes in two styles, `rider` and `mono`
    transparent = true, -- Enable this to disable setting the background color
    plugins = {
        -- enable all plugins when not using lazy.nvim
        -- set to false to manually enable/disable plugins
        all = package.loaded.lazy == nil,
        -- uses your plugin manager to automatically enable needed plugins
        -- currently only lazy.nvim is supported
        auto = true,
        -- add any plugins here that you want to enable
        -- for all possible plugins, see:
        --   * https://github.com/mbwilding/gronk.nvim/tree/main/lua/gronk/groups
        -- telescope = true,
    },
}

M.options = nil

function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

function M.extend(opts)
    return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
    __index = function(_, k)
        if k == "options" then
            return M.defaults
        end
    end,
})

return M
