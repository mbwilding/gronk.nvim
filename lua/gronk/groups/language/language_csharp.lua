local M = {}

function M.get(c)
    return {
        ["@lsp.type.stringEscapeCharacter.cs"] = { fg = c.escape },
    }
end

return M
