local M = {}

M.styles = setmetatable({}, {
    __index = function(_, style)
        return vim.deepcopy("gronk.colors." .. style)
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

    -- Transparency
    if opts.transparent then
        colors.bg = colors.none
    end

    return colors, opts
end

return M
