local M = {}

function M.get(c, opts)
    return {
        LazyButton       = { fg = c.fg, bg = c.window_accent },
        LazyButtonActive = { fg = c.bg, bg = c.macro },
        LazyComment      = { fg = c.comment },
        LazyH1           = { fg = c.bg, bg = c.macro },
        LazyProgressDone = { fg = c.keyword, bold = true },
        LazyProgressTodo = { fg = c.macro, bold = true },
        LazyProp         = { fg = c.macro },
        LazyReasonPlugin = { fg = c.comment },
        LazySpecial      = { fg = c.macro },
        Title            = { fg = c.macro },
    }
end

return M
