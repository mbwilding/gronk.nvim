local config = require("gronk.config")

local M = {}

function M.load(opts)
    opts = require("gronk.config").extend(opts)
    return require("gronk.theme").setup(opts)
end

M.setup = config.setup

return M
