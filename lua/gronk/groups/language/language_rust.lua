local M = {}

function M.get(c)
    return {
        ["@lsp.mod.crateRoot"] = { fg = c.namespace },
        ["@lsp.mod.declaration.rust"] = { fg = c.member },
        ["@lsp.type.const.rust"] = { fg = c.constant },
        ["@lsp.type.struct.rust"] = { fg = c.constant },
        ["@lsp.type.typeAlias.rust"] = { fg = c.struct },
        ["@lsp.typemod.builtinAttribute.attribute.rust"] = { fg = c.macro },
        ["@lsp.typemod.decorator.attribute.rust"] = { fg = c.macro },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@lsp.typemod.parameter.reference.rust"] = { fg = c.operator },
        ["@lsp.typemod.punctuation.unsafe.rust"] = { fg = c.delimiter },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },
        ["rustAttribute"] = { fg = c.attribute },
        ["rustBoolean"] = { fg = c.keyword },
        ["rustDerive"] = { fg = c.macro },
        ["rustEnumVariant"] = { fg = c.constant },
        ["rustMacro"] = { fg = c.macro },
        ["rustModPath"] = { fg = c.namespace },
        ["rustOperator"] = { fg = c.operator },
        ["rustSigil"] = { fg = c.keyword },
        ["rustStorage"] = { fg = c.keyword },
        ["rustType"] = { fg = c.keyword },
    }
end

return M
