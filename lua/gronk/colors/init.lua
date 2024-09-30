local Util = require("gronk.util")

local M = {}

M.styles = setmetatable({}, {
    __index = function(_, style)
        return vim.deepcopy(Util.mod("gronk.colors." .. style))
    end,
})

function M.setup(opts)
    opts = require("gronk.config").extend(opts)

    local palette = M.styles[opts.style]
    if type(palette) == "function" then
        palette = palette(opts)
    end

    -- Color Palette
    local colors = palette
    colors.black = "#000000"
    colors.white = "#ffffff"

    -- Transparency
    if opts.transparent then
        colors.bg = colors.none
    end

    return colors, opts
end

return M
