local M = {}

function M.setup(opts)
    opts = require("gronk.config").extend(opts)

    local colors = require("gronk.colors").setup(opts)
    local groups = require("gronk.groups").setup(colors, opts)

    -- only needed to clear when not the default colorscheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.background = "dark"
    vim.g.colors_name = "gronk-" .. opts.style

    for group, hl in pairs(groups) do
        hl = type(hl) == "string" and { link = hl } or hl
        vim.api.nvim_set_hl(0, group, hl)
    end

    return colors, groups, opts
end

return M
