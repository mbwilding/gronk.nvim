local M = {}

function M.get(c, opts)
    return {
        DapUIPlayPause = { fg = c.ok },
        DapUIPlayPauseNC = { fg = c.ok },
        DapUIStepInto = { fg = c.info },
        DapUIStepIntoNC = { fg = c.info },
        DapUIStepOver = { fg = c.info },
        DapUIStepOverNC = { fg = c.info },
        DapUIStepOut = { fg = c.info },
        DapUIStepOutNC = { fg = c.info },
        DapUIStepBack = { fg = c.info },
        DapUIStepBackNC = { fg = c.info },
        DapUIRestart = { fg = c.warn },
        DapUIRestartNC = { fg = c.warn },
        DapUIStop = { fg = c.error },
        DapUIStopNC = { fg = c.error },
    }
end

return M
