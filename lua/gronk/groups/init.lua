local Config = require("gronk.config")
local Util = require("gronk.util")

local M = {}

M.plugins = {
    ["blink.cmp"] = "blink",
    ["copilot.lua"] = "copilot",
    ["dashboard-nvim"] = "dashboard-nvim",
    ["kubectl.nvim"] = "kubectl",
    ["lazy.nvim"] = "lazy",
    ["lsp-lens.nvim"] = "lsp-lens",
    ["markview.nvim"] = "markview",
    ["mason.nvim"] = "mason",
    ["neogit"] = "neogit",
    ["noice.nvim"] = "noice",
    ["nvim-cmp"] = "cmp",
    ["nvim-dap"] = "dap",
    ["nvim-notify"] = "notify",
    ["nvim-tree.lua"] = "nvim-tree",
    ["nvim-treesitter-context"] = "treesitter-context",
    ["oil.nvim"] = "oil",
    ["snacks.nvim"] = "snacks",
    ["telescope.nvim"] = "telescope",
    ["which-key.nvim"] = "which-key",
}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

function M.get_group(name)
    local groups = Util.mod("gronk.groups." .. name)
    return groups
end

function M.get(name, colors, opts)
    -- TODO: For debugging what is loaded
    -- print(name)
    local mod = M.get_group(name)
    return mod.get(colors, opts)
end

function M.setup(colors, opts)
    local groups = {
        neovim = true,
        ["language/language"] = true,
        -- TODO: Detect languages based on available LSP
        ["language/language_csharp"] = true,
        ["language/language_editorconfig"] = true,
        ["language/language_rust"] = true,
    }

    if opts.plugins.all then
        for _, group in pairs(M.plugins) do
            groups[group] = true
        end
    elseif opts.plugins.auto and package.loaded.lazy then
        local plugins = require("lazy.core.config").plugins
        for plugin, group in pairs(M.plugins) do
            if plugins[plugin] then
                groups[group] = true
            end
        end

        -- special case for mini.nvim
        if plugins["mini.nvim"] then
            for _, group in pairs(M.plugins) do
                if group:find("^mini_") then
                    groups[group] = true
                end
            end
        end
    end

    -- manually enable/disable plugins
    for plugin, group in pairs(M.plugins) do
        local use = opts.plugins[group]
        use = use == nil and opts.plugins[plugin] or use
        if use ~= nil then
            if type(use) == "table" then
                use = use.enabled
            end
            groups[group] = use or nil
        end
    end

    local names = vim.tbl_keys(groups)
    table.sort(names)

    local cache_key = opts.style
    local cache = opts.cache and Util.cache.read(cache_key)

    local inputs = {
        colors = colors,
        plugins = names,
        version = Config.version,
        opts = { transparent = opts.transparent, styles = opts.styles, dim_inactive = opts.dim_inactive },
    }

    local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

    if not ret then
        ret = {}
        -- merge highlights
        for group in pairs(groups) do
            for k, v in pairs(M.get(group, colors, opts)) do
                ret[k] = v
            end
        end
        Util.resolve(ret)
        if opts.cache then
            Util.cache.write(cache_key, { groups = ret, inputs = inputs })
        end
    end

    return ret, groups
end

return M
