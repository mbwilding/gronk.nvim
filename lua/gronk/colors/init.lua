local Util = require("gronk.util")

local M = {}

M.colors = require("gronk.colors." .. vim.g.colors_name:match("([^%-]+)$"))

function M.setup(opts)
    opts = require("gronk.config").extend(opts)

    local palette = Util.mod("gronk.colors." .. opts.style)
    if type(palette) == "function" then
        palette = palette(opts)
    end

    -- Color Palette
    local colors = palette

    -- Transparency
    if opts.transparent then
        colors.bg = colors.none
    end

    return colors, opts
end

return M
