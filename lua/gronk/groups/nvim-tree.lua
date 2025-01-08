local M = {}

function M.get(c, opts)
    return {
        NvimTreeFileIcon = { fg = c.macro },
        NvimTreeFolderIcon = { fg = c.namespace },
        NvimTreeSymlinkIcon = { fg = c.comment },

        -- NvimTreeDiagnosticErrorIcon = { fg = c.error },
        -- NvimTreeDiagnosticWarnIcon = { fg = c.warn },
        -- NvimTreeDiagnosticInfoIcon = { fg = c.info },
        -- NvimTreeDiagnosticHintIcon = { fg = c.hint },
    }
end

return M
