vim.o.background = "dark"
vim.cmd.highlight("clear")
if vim.g.syntax_on then
	vim.cmd.syntax("reset")
end
vim.g.colors_name = "gronk"

local M = require("gronk")

M.highlights = {
	-- Theme
	Normal = { fg = M.base.fg, bg = M.base.none },   -- Current window
	NormalNC = { fg = M.base.fg, bg = M.base.none }, -- Non-current window
	ColorColumn = { fg = M.base.fg, bg = M.base.none }, -- Columns set with `colorcolumn`
	NormalFloat = { fg = M.base.fg, bg = M.base.none }, -- Normal text in floating windows
	NormalSB = { fg = M.base.fg, bg = M.base.none }, -- Normal text in sidebar

	-- Gutter
	LineNr = { fg = M.primary, bg = M.base.none },          -- Current line number
	CursorLineNr = { fg = M.primary, bg = M.base.none },    -- Unknown
	LineNrAbove = { fg = M.code.redundant, bg = M.base.none }, -- Above current line numbers
	LineNrBelow = { fg = M.code.redundant, bg = M.base.none }, -- Below current line numbers

	-- Generic
	MatchParen = { fg = M.base.bg, bg = M.base.blue_dark },           -- Matching pair highlight
	Cursor = { fg = M.base.fg, bg = M.secondary },                    -- Character under the cursor
	lCursor = { fg = M.base.fg, bg = M.secondary },                   -- Character under the cursor when `language-mapping`
	CursorIM = { fg = M.base.fg, bg = M.base.bg },                    -- Character under the cursor in IME mode
	CursorLine = { fg = M.base.blue_dark, bg = M.base.none },         -- Screen line at the cursor
	IncSearch = { fg = M.base.bg, bg = M.base.blue_dark },            -- Yank highlight
	Conceal = { fg = M.code.redundant, bg = M.base.none },            -- Grayed out
	EndOfBuffer = { fg = M.base.bg },                                 -- End of buffer `~`
	DiffAdd = { fg = M.base.green },                                  -- Diff add
	DiffChange = { fg = M.base.orange_dark },                         -- Diff change
	DiffDelete = { fg = M.code.error },                               -- Diff delete
	ErrorMsg = { fg = M.code.error },                                 -- Error messages on the commandline
	VertSplit = { fg = M.base.window_accent, bg = M.base.window_bg }, -- Vertical split border
	WinSeparator = { fg = M.base.window_accent, bg = M.base.window_bg }, -- Window border
	WinBar = { fg = M.base.fg, bg = M.base.window_bg },
	WinBarNC = { fg = M.base.fg, bg = M.base.window_bg },
	StatusLine = { fg = M.base.fg, bg = M.base.none },
	StatusLineNC = { fg = M.base.fg, bg = M.base.none },
	Folded = { fg = M.base.blue_dark, bg = M.base.none }, -- Folded gutter
	TabLine = { fg = M.base.fg, bg = M.base.window_accent },
	TabLineSel = { fg = M.base.window_bg, bg = M.base.blue_dark },
	TabLineFill = { bg = M.base.bg },

	-- NeoVim
	healthError = { fg = M.base.red },
	healthSuccess = { fg = M.base.green },
	healthWarning = { fg = M.base.orange_light },

	-- Cmp
	CmpDocumentation = { fg = M.base.fg, bg = M.base.window_bg },
	CmpDocumentationBorder = { fg = M.base.window_accent, bg = M.base.window_bg },
	CmpItemAbbr = { fg = M.base.fg, bg = M.base.none },
	CmpItemAbbrDeprecated = { fg = M.base.gray_dark, bg = M.base.none, strikethrough = true },
	CmpItemAbbrMatch = { fg = M.primary, bg = M.base.none },
	CmpItemAbbrMatchFuzzy = { fg = M.primary, bg = M.base.none },

	-- Lazy
	LazyComment = { fg = M.code.comment },
	LazyProp = { fg = M.secondary },
	LazyReasonPlugin = { fg = M.code.comment },
	LazySpecial = { fg = M.secondary },
	LazyH1 = { fg = M.base.bg, bg = M.secondary },
	LazyButton = { fg = M.base.fg, bg = M.base.window_accent },
	LazyButtonActive = { fg = M.base.bg, bg = M.secondary },
	Title = { fg = M.secondary },

	-- Mason
	MasonHeader = { fg = M.base.bg, bg = M.secondary },
	MasonHighlight = { fg = M.base.blue_dark, bg = M.base.none },
	MasonHighlightBlockBold = { fg = M.base.window_accent, bg = M.secondary },
	MasonMuted = { fg = M.code.redundant, bg = M.base.none },
	MasonMutedBlock = { fg = M.base.fg, bg = M.base.window_accent },
	MasonHighlightBlock = { fg = M.secondary, bg = M.base.window_accent },

	-- File System
	Directory = { fg = M.primary }, -- Directory color
	OilFile = { fg = M.secondary }, -- Oil file color

	-- Telescope
	TelescopeNormal = { fg = M.primary, bg = M.base.window_bg },
	TelescopeBorder = { fg = M.secondary, bg = M.base.window_bg },
	TelescopeMatching = { fg = M.secondary, bg = M.base.window_bg },

	-- Which Key
	WhichKey = { fg = M.primary },
	WhichKeyGroup = { fg = M.primary },
	WhichKeyDesc = { fg = M.primary },
	WhichKeySeparator = { fg = M.primary },
	WhichKeyFloat = { bg = M.base.window_bg },
	WhichKeyValue = { fg = M.primary },

	-- Copilot
	CopilotSuggestion = { fg = M.base.gray_dark },
	CopilotAnnotation = { fg = M.base.gray_light },

	-- M.code
	["@boolean"] = { fg = M.code.keyword },
	["@constant.macro"] = { fg = M.code.macro },
	["@constant"] = { fg = M.code.constant },
	["@function.macro"] = { fg = M.code.macro },
	["@lsp.mod.declaration"] = { fg = M.code.module },
	["@lsp.mod.library"] = { fg = M.code.module },
	["@lsp.mod.static"] = { fg = M.code.constant },
	["@lsp.type.invalidEscapeSequence"] = { fg = M.code.error },
	["@lsp.type.formatSpecifier"] = { fg = M.code.struct },
	["@lsp.type.keyword"] = { fg = M.code.keyword },
	["@lsp.typemod.decorator.attribute"] = { fg = M.code.attribute },
	["@lsp.typemod.derive"] = { fg = M.code.interface },
	["@lsp.typemod.enum"] = { fg = M.code.enum },
	["@lsp.typemod.enumMember"] = { fg = M.code.constant },
	["@lsp.typemod.function"] = { fg = M.code.method },
	["@lsp.typemod.interface.library"] = { fg = M.code.interface },
	["@lsp.typemod.macro"] = { fg = M.code.macro },
	["@lsp.typemod.method"] = { fg = M.code.method },
	["@lsp.typemod.operator.controlFlow"] = { fg = M.code.keyword },
	["@lsp.typemod.property.declaration"] = { fg = M.code.member },
	["@lsp.typemod.property"] = { fg = M.code.member },
	["@lsp.typemod.struct"] = { fg = M.code.struct },
	["@lsp.typemod.typeAlias.library"] = { fg = M.code.struct }, -- link = "Type"
	["@lsp.typemod.variable"] = { fg = M.code.variable },
	["@module"] = { fg = M.code.namespace },
	["@string.escape"] = { fg = M.code.escape },
	["@variable"] = { fg = M.code.variable },
	["@variable.member"] = { fg = M.code.member },
	Comment = { fg = M.code.comment },
	Delimiter = { fg = M.code.delimiter },
	Function = { fg = M.code.method },
	Identifier = { fg = M.code.member },
	Number = { fg = M.code.number },
	Operator = { fg = M.code.operator },
	Special = { fg = M.code.keyword },
	Statement = { fg = M.code.keyword },
	String = { fg = M.code.string },
	Type = { fg = M.code.struct },

	-- Diagnostics
	DiagnosticUnnecessary = { fg = M.code.redundant },

	-- nvim-notify
	NotifyBackground = { bg = M.base.bg },
	NotifyINFOBody = { fg = M.base.fg },
	NoiceAttr = { fg = M.base.fg },

	-- Hints
	LspInlayHint = { fg = M.base.gray_dark },
	LspLens = { fg = M.base.gray_light },

	-- Rust
	["@type.qualifier.rust"] = { fg = M.code.keyword, underline = true },
	["@lsp.mod.mutable"] = { underline = true },
	["@lsp.typemod.namespace.crateRoot"] = { fg = M.code.namespace }, -- link = "@module"
	["@lsp.typemod.interface.declaration"] = { fg = M.code.interface },
	["@lsp.mod.unsafe"] = { fg = M.code.error },

	-- CSharp
	["@lsp.type.stringEscapeCharacter.cs"] = { fg = M.code.escape },
}

for k, v in pairs(M.highlights) do
	vim.api.nvim_set_hl(0, k, v)
end

vim.api.nvim_create_autocmd("ModeChanged", {
	group = vim.api.nvim_create_augroup("gronk", { clear = true }),
	pattern = "*",
	callback = function()
		local colors = require("gronk")
		local mode = vim.api.nvim_get_mode().mode
		local color = colors.mode[mode] or colors.M.base.orange

		local highlights = {
			LineNr = { fg = color },
			Cursor = { bg = color },
			lCursor = { bg = color },
		}

		for k, v in pairs(highlights) do
			vim.api.nvim_set_hl(0, k, v)
		end
	end,
})
