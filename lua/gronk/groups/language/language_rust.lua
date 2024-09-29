local M = {}

function M.get(c)
    return {
        ["@lsp.mod.crateRoot"] = { fg = c.namespace },
        ["@lsp.mod.declaration.rust"] = { fg = c.member },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },
    }
end

return M
