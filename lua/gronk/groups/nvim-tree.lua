local M = {}

function M.get(c, opts)
    return {
        NvimTreeDiagnosticErrorIcon = { fg = c.error },
        NvimTreeDiagnosticWarnIcon = { fg = c.warn },
        NvimTreeDiagnosticInfoIcon = { fg = c.info },
        NvimTreeDiagnosticHintIcon = { fg = c.hint },
    }
end

return M
