local M = {}

function M.get(c)
    return {
        ["@lsp.type.extensionMethod.cs"] = { fg = c.method },
        ["@lsp.type.field.cs"] = { fg = c.constant },
        ["@lsp.type.namespace.cs"] = { fg = c.struct },
        ["@lsp.type.stringEscapeCharacter.cs"] = { fg = c.escape },
    }
end

return M
