local M = {}

function M.get(c, opts)
    return {
        CopilotAnnotation = { fg = c.redundant },
        CopilotSuggestion = { fg = c.hint },
    }
end

return M
