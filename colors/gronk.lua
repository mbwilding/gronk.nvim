-- Basic theme setup
local name = "gronk"
vim.o.background = "dark"
vim.cmd.highlight("clear")
if vim.g.syntax_on then
    vim.cmd.syntax("reset")
end
vim.g.colors_name = name

-- Declare the theme object
local M = require(name)

-- Set tty colors
-- vim.g.terminal_color_0 = M.base.bg
-- vim.g.terminal_color_1 = M.base.bg
-- vim.g.terminal_color_2 = M.base.bg
-- vim.g.terminal_color_3 = M.base.bg
-- vim.g.terminal_color_4 = M.base.bg
-- vim.g.terminal_color_5 = M.base.bg
-- vim.g.terminal_color_6 = M.base.bg
-- vim.g.terminal_color_7 = M.base.bg
-- vim.g.terminal_color_8 = M.base.bg
-- vim.g.terminal_color_9 = M.base.bg
-- vim.g.terminal_color_10 = M.base.bg
-- vim.g.terminal_color_11 = M.base.bg
-- vim.g.terminal_color_12 = M.base.bg
-- vim.g.terminal_color_13 = M.base.bg
-- vim.g.terminal_color_14 = M.base.bg
-- vim.g.terminal_color_15 = M.base.bg

local trans = M.options.transparent and M.base.none or M.base.bg

-- Set the highlights
M.highlights = {
    -- Theme
    Normal                                     = { fg = M.base.fg, bg = trans },            -- Current window
    NormalFloat                                = { fg = M.base.fg, bg = M.base.window_bg }, -- Normal text in floating windows
    NormalNC                                   = { fg = M.base.fg, bg = trans },            -- Non-current window
    NormalSB                                   = { fg = M.base.fg, bg = trans },            -- Normal text in sidebar

    -- Gutter
    CursorLineNr                               = { fg = M.primary, bg = M.base.none },        -- Unknown
    LineNr                                     = { fg = M.primary, bg = M.base.none },        -- Current line number
    LineNrAbove                                = { fg = M.code.redundant, bg = M.base.none }, -- Above current line numbers
    LineNrBelow                                = { fg = M.code.redundant, bg = M.base.none }, -- Below current line numbers

    -- Generic
    ColorColumn                                = { fg = M.base.fg, bg = M.base.window_accent }, -- Columns set with `colorcolumn`
    Conceal                                    = { fg = M.code.redundant, bg = M.base.none },   -- Grayed out
    Cursor                                     = { fg = M.base.fg, bg = M.secondary },          -- Character under the cursor
    CursorIM                                   = { fg = M.base.fg, bg = M.base.bg },            -- Character under the cursor in IME mode
    CursorLine                                 = { fg = M.base.blue_dark, bg = M.base.none },   -- Screen line at the cursor
    DiffAdd                                    = { fg = M.base.green },                         -- Diff add
    DiffChange                                 = { fg = M.base.orange_dark },                   -- Diff change
    DiffDelete                                 = { fg = M.code.error },                         -- Diff delete
    EndOfBuffer                                = { fg = M.base.bg },                            -- End of buffer `~`
    ErrorMsg                                   = { fg = M.code.error },                         -- Error messages on the commandline
    Folded                                     = { fg = M.base.blue_dark, bg = M.base.none },   -- Folded gutter
    IncSearch                                  = { fg = M.base.bg, bg = M.secondary },          -- Yank highlight
    MatchParen                                 = { bg = M.primary },                            -- Matching pair highlight
    StatusLine                                 = { fg = M.base.fg, bg = trans },
    StatusLineNC                               = { fg = M.base.fg, bg = trans },
    TabLine                                    = { fg = M.base.fg, bg = M.base.window_accent },
    TabLineFill                                = { bg = M.base.bg },
    TabLineSel                                 = { fg = M.base.window_bg, bg = M.base.blue_dark },
    VertSplit                                  = { fg = M.base.window_accent, bg = M.base.window_bg }, -- Vertical split border
    WinBar                                     = { fg = M.base.fg, bg = M.base.window_bg },
    WinBarNC                                   = { fg = M.base.fg, bg = M.base.window_bg },
    WinSeparator                               = { fg = trans, bg = M.base.none },     -- Window border
    lCursor                                    = { fg = M.base.fg, bg = M.secondary }, -- Character under the cursor when `language-mapping`

    -- NeoVim
    healthError                                = { fg = M.base.red },
    healthSuccess                              = { fg = M.base.green },
    healthWarning                              = { fg = M.base.orange_light },

    -- Diagnostics
    DiagnosticUnnecessary                      = { fg = M.code.redundant },

    -- Cmp
    CmpGhostText                               = { fg = M.code.redundant },
    CmpDocumentation                           = { fg = M.base.fg, bg = M.base.window_bg },
    CmpDocumentationBorder                     = { fg = M.base.window_accent, bg = M.base.window_bg },
    CmpItemAbbr                                = { fg = M.base.fg, bg = M.base.none },
    CmpItemAbbrDeprecated                      = { fg = M.code.redundant, bg = M.base.none, strikethrough = true },
    CmpItemAbbrMatch                           = { fg = M.base.blue_light, bg = M.base.none },
    CmpItemAbbrMatchFuzzy                      = { fg = M.base.blue_dark, bg = M.base.none },
    CmpItemKindConstant                        = { fg = M.code.constant, bg = M.base.none },
    CmpItemKindCopilot                         = { fg = M.base.orange_dark, bg = M.base.none },
    CmpItemKindDefault                         = { fg = M.base.fg, bg = M.base.none },
    CmpItemKindEnum                            = { fg = M.code.enum, bg = M.base.none },
    CmpItemKindField                           = { fg = M.code.member, bg = M.base.none },
    CmpItemKindFunction                        = { fg = M.code.method, bg = M.base.none },
    CmpItemKindInterface                       = { fg = M.code.interface, bg = M.base.none },
    CmpItemKindKeyword                         = { fg = M.code.keyword, bg = M.base.none },
    CmpItemKindMethod                          = { fg = M.code.method, bg = M.base.none },
    CmpItemKindModule                          = { fg = M.code.module, bg = M.base.none },
    CmpItemKindReference                       = { fg = M.code.variable, bg = M.base.none },
    CmpItemKindSnippet                         = { fg = M.code.macro, bg = M.base.none },
    CmpItemKindStruct                          = { fg = M.code.struct, bg = M.base.none },
    CmpItemKindText                            = { fg = M.base.fg, bg = M.base.none },
    CmpItemKindVariable                        = { fg = M.code.variable, bg = M.base.none },

    -- Lazy
    LazyButton                                 = { fg = M.base.fg, bg = M.base.window_accent },
    LazyButtonActive                           = { fg = M.base.bg, bg = M.secondary },
    LazyComment                                = { fg = M.code.comment },
    LazyH1                                     = { fg = M.base.bg, bg = M.secondary },
    LazyProp                                   = { fg = M.secondary },
    LazyReasonPlugin                           = { fg = M.code.comment },
    LazySpecial                                = { fg = M.secondary },
    Title                                      = { fg = M.secondary },

    -- Treesitter Context
    TreesitterContext                          = { bg = trans, link = "NONE" },
    TreesitterContentLineNumber                = { bg = trans, link = "NONE" },
    TreesitterContextBottom                    = { underline = true, sp = M.base.fg },
    TreesitterContextLineNumberBottom          = { underline = true, sp = M.base.fg },

    -- Mason
    MasonHeader                                = { fg = M.base.bg, bg = M.secondary },
    MasonHighlight                             = { fg = M.base.blue_dark, bg = M.base.none },
    MasonHighlightBlock                        = { fg = M.secondary, bg = M.base.window_accent },
    MasonHighlightBlockBold                    = { fg = M.base.window_accent, bg = M.secondary },
    MasonMuted                                 = { fg = M.code.redundant, bg = M.base.none },
    MasonMutedBlock                            = { fg = M.base.fg, bg = M.base.window_accent },

    -- File System
    Directory                                  = { fg = M.primary },   -- Directory color
    OilFile                                    = { fg = M.secondary }, -- Oil file color

    -- Telescope
    TelescopeBorder                            = { fg = M.secondary, bg = M.base.window_bg },
    TelescopeMatching                          = { fg = M.secondary, bg = M.base.window_bg },
    TelescopeNormal                            = { fg = M.primary, bg = M.base.window_bg },

    -- Which Key
    WhichKey                                   = { fg = M.primary },
    WhichKeyDesc                               = { fg = M.primary },
    WhichKeyFloat                              = { bg = M.base.window_bg },
    WhichKeyGroup                              = { fg = M.primary },
    WhichKeySeparator                          = { fg = M.primary },
    WhichKeyValue                              = { fg = M.primary },

    -- Copilot
    CopilotAnnotation                          = { fg = M.base.gray_light },
    CopilotSuggestion                          = { fg = M.base.gray_dark },

    -- DAP
    DapBreakpoint                              = { fg = M.base.red },
    DapLogPoint                                = { fg = M.base.red },
    DapStopped                                 = { fg = M.base.red },

    -- nvim-notify
    NoiceAttr                                  = { fg = M.base.fg },
    NotifyBackground                           = { bg = M.base.bg },
    NotifyINFOBody                             = { fg = M.base.fg },

    -- Hints
    LspInlayHint                               = { fg = M.base.gray_dark },
    LspLens                                    = { fg = M.base.gray_light },

    -- Markdown
    MarkviewInlineCode                         = { bg = M.base.window_bg },
    MarkviewCode                               = { bg = M.base.window_bg },
    MarkviewCodeInfo                           = { bg = M.base.window_bg },

    -- Code
    Comment                                    = { fg = M.code.comment },
    Delimiter                                  = { fg = M.code.delimiter },
    Function                                   = { fg = M.code.method },
    Identifier                                 = { fg = M.code.member },
    Number                                     = { fg = M.code.number },
    Operator                                   = { fg = M.code.operator },
    Special                                    = { fg = M.code.keyword },
    Statement                                  = { fg = M.code.keyword },
    String                                     = { fg = M.code.string },
    Type                                       = { fg = M.code.struct },
    ["@attribute"]                             = { fg = M.code.attribute },
    ["@boolean"]                               = { fg = M.code.keyword },
    ["@character"]                             = { fg = M.code.number },
    ["@constant"]                              = { fg = M.code.constant },
    ["@constant.macro"]                        = { fg = M.code.macro },
    ["@constructor"]                           = { fg = M.code.struct },
    ["@function.macro"]                        = { fg = M.code.macro },
    ["@lsp.mod.declaration"]                   = { fg = M.code.module },
    ["@lsp.mod.library"]                       = { fg = M.code.module },
    ["@lsp.type.fieldName"]                    = { fg = M.code.member },
    ["@lsp.type.formatSpecifier"]              = { fg = M.code.struct },
    ["@lsp.type.interface"]                    = { fg = M.code.interface },
    ["@lsp.type.invalidEscapeSequence"]        = { fg = M.code.error },
    ["@lsp.type.keyword"]                      = { fg = M.code.keyword },
    ["@lsp.typemod.decorator.attribute"]       = { fg = M.code.attribute },
    ["@lsp.typemod.derive"]                    = { fg = M.code.interface },
    ["@lsp.typemod.enum"]                      = { fg = M.code.enum },
    ["@lsp.typemod.enumMember"]                = { fg = M.code.constant },
    ["@lsp.typemod.function"]                  = { fg = M.code.method },
    ["@lsp.typemod.interface.library"]         = { fg = M.code.interface },
    ["@lsp.typemod.macro"]                     = { fg = M.code.macro },
    ["@lsp.typemod.method"]                    = { fg = M.code.method },
    ["@lsp.typemod.operator.controlFlow"]      = { fg = M.code.keyword },
    ["@lsp.typemod.property"]                  = { fg = M.code.member },
    ["@lsp.typemod.property.declaration"]      = { fg = M.code.member },
    ["@lsp.typemod.struct"]                    = { fg = M.code.struct },
    ["@lsp.typemod.typeAlias.library"]         = { fg = M.code.struct }, -- link = "Type"
    ["@lsp.typemod.typeParameter.declaration"] = { fg = M.code.struct },
    ["@lsp.typemod.variable"]                  = { fg = M.code.variable },
    ["@module"]                                = { fg = M.code.namespace },
    ["@string.escape"]                         = { fg = M.code.escape },
    ["@variable"]                              = { fg = M.code.variable },
    ["@variable.member"]                       = { fg = M.code.member },

    -- Rust
    ["@lsp.mod.declaration.rust"]              = { fg = M.base.fg },
    ["@lsp.mod.mutable"]                       = { underline = true },
    ["@lsp.mod.unsafe"]                        = { fg = M.code.error },
    ["@lsp.typemod.interface.declaration"]     = { fg = M.code.interface },
    ["@lsp.typemod.namespace.crateRoot"]       = { fg = M.code.namespace }, -- link = "@module"
    ["@type.qualifier.rust"]                   = { fg = M.code.keyword, underline = true },

    -- CSharp
    ["@lsp.type.stringEscapeCharacter.cs"]     = { fg = M.code.escape },
}

-- Applies the highlights
for k, v in pairs(M.highlights) do
    vim.api.nvim_set_hl(0, k, v)
end

-- Icons
vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
vim.fn.sign_define(
    "DapBreakpointCondition",
    { text = "ﳁ", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define(
    "DapBreakpointRejected",
    { text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define(
    "DapLogPoint",
    { text = "", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" }
)
vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })
vim.fn.sign_define("DapBreakpoint", {
    text = "⦿",
    texthl = "DapBreakpoint",
    linehl = "DapBreakpoint",
    numhl = "DapBreakpoint",
})
