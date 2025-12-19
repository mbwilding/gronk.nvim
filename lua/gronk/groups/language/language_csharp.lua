local M = {}

function M.get(c)
    return {
        ["@lsp.type.extensionMethod.cs"] = { fg = c.method },
        ["@lsp.type.stringEscapeCharacter.cs"] = { fg = c.escape },
    }
end

return M
