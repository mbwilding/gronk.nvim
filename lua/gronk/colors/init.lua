local Util = require("gronk.util")

local M = {}

function M.setup(opts)
    opts = require("gronk.config").extend(opts)

    local colors = Util.mod("gronk.colors." .. opts.style)

    -- Transparency
    if opts.transparent then
        colors.bg = colors.none
    end

    return colors, opts
end

return M
