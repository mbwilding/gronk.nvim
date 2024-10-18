local M = {}

function M.get(c, opts)
    return {
        KubectlHeader = { fg = c.keyword },
        KubectlWarning = { fg = c.warn },
        KubectlError = { fg = c.error },
        KubectlInfo = { fg = c.info },
        KubectlDebug = { fg = c.module },
        KubectlSuccess = { fg = c.ok },
        KubectlPending = { fg = c.string },
        KubectlDeprecated = { fg = c.redundant },
        KubectlExperimental = { fg = c.namespace },
        KubectlNote = { fg = c.hint },
        KubectlGray = { fg = c.delimiter },
        -- KubectlPselect = { fg = c.fg },
        -- KubectlPmatch = { fg = c.fg },
        -- KubectlUnderline = { fg = c.fg },
    }
end

return M
