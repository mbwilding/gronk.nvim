local M = {}

function M.get(c)
    return {
        ["yamlBlockMappingDelimiter"] = { fg = c.operator },
        ["yamlBool"] = { fg = c.keyword },
        ["yamlPlainScalar"] = { fg = c.string },
    }
end

return M
