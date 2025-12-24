local M = {}

function M.get(c)
    return {
        ["@lsp.mod.crateRoot"] = { fg = c.namespace },
        ["@lsp.mod.declaration.rust"] = { fg = c.member },
        ["@lsp.typemod.const.constant.rust"] = { fg = c.constant },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@lsp.typemod.parameter.declaration.rust"] = { fg = c.variable },
        ["@lsp.typemod.punctuation.unsafe.rust"] = { fg = c.delimiter },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },
    }
end

return M
