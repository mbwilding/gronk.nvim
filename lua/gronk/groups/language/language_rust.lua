local M = {}

function M.get(c)
    return {
        ["@lsp.mod.crateRoot"] = { fg = c.namespace },
        ["@lsp.mod.declaration.rust"] = { fg = c.member },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@lsp.typemod.variable.declaration.rust"] = { fg = c.struct },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },
        ["rustModPath"] = { fg = c.namespace },
    }
end

return M
