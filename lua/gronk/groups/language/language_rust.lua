local M = {}

function M.get(c)
    return {
        ["@lsp.mod.declaration.rust"] = { fg = c.fg },
        ["@lsp.mod.mutable"] = { underline = true },
        ["@lsp.mod.unsafe"] = { fg = c.error },
        ["@lsp.typemod.interface.declaration"] = { fg = c.interface },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },
    }
end

return M
