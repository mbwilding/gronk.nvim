local M = {}

function M.get(c)
    return {
        ["yamlBlockMappingDelimiter"] = { fg = c.operator },
        ["yamlBool"] = { fg = c.keyword },
        ["yamlEscape"] = { fg = c.number },
        ["yamlPlainScalar"] = { fg = c.string },
    }
end

return M
