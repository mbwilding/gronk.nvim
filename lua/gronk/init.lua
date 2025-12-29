local M = {}

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.background = "dark"
    vim.g.colors_name = "gronk"

    local c = require("gronk.colors")

    local highlights = {
        -- Default
        Array = { fg = c.delimiter, bg = c.none },
        Boolean = { fg = c.keyword, bg = c.none },
        Class = { fg = c.struct, bg = c.none },
        Color = "Special",
        Comment = { fg = c.comment },
        Constant = { fg = c.constant, bg = c.none },
        Constructor = { fg = c.keyword, bg = c.none },
        Copilot = { fg = c.namespace, bg = c.none },
        Default = { fg = c.fg, bg = c.none },
        Delimiter = { fg = c.delimiter },
        Enum = { fg = c.enum, bg = c.none },
        EnumMember = { fg = c.constant, bg = c.none },
        Event = "Special",
        Field = { fg = c.member, bg = c.none },
        File = { fg = c.macro, bg = c.none },
        Folder = { fg = c.namespace, bg = c.none },
        Function = { fg = c.method, bg = c.none },
        Identifier = { fg = c.member },
        Interface = { fg = c.interface, bg = c.none },
        Key = { fg = c.member, bg = c.none },
        Keyword = { fg = c.keyword, bg = c.none },
        Method = { fg = c.method, bg = c.none },
        Module = { fg = c.module, bg = c.none },
        Namespace = { fg = c.namespace, bg = c.none },
        Null = { fg = c.redundant, bg = c.none },
        Number = { fg = c.number, bg = c.none },
        Object = { fg = c.keyword, bg = c.none },
        Operator = { fg = c.operator, bg = c.none },
        Package = { fg = c.module, bg = c.none },
        Property = { fg = c.member, bg = c.none },
        Reference = { fg = c.variable, bg = c.none },
        Snippet = { fg = c.macro, bg = c.none },
        Special = { fg = c.keyword },
        Statement = { fg = c.keyword },
        String = { fg = c.string, bg = c.none },
        Struct = { fg = c.struct, bg = c.none },
        Text = { fg = c.fg, bg = c.none },
        Type = { fg = c.struct },
        TypeParameter = "@lsp.type.typeParameter",
        Unit = { fg = c.struct, bg = c.none },
        Value = { fg = c.string, bg = c.none },
        Variable = { fg = c.variable, bg = c.none },
        ["@attribute"] = { fg = c.attribute },
        ["@boolean"] = { fg = c.keyword },
        ["@character"] = { fg = c.number },
        ["@constant"] = { fg = c.constant },
        ["@constant.macro"] = { fg = c.macro },
        ["@constructor"] = { fg = c.struct },
        ["@function.macro"] = { fg = c.macro },
        ["@lsp.mod.attribute"] = { fg = c.attribute },
        ["@lsp.mod.declaration"] = { fg = c.module },
        ["@lsp.mod.library"] = { fg = c.module },
        ["@lsp.mod.mutable"] = { underline = true },
        ["@lsp.mod.unsafe"] = { fg = c.error },
        ["@lsp.type.builtinType"] = { fg = c.keyword },
        ["@lsp.type.enum"] = { fg = c.enum },
        ["@lsp.type.fieldName"] = { fg = c.member },
        ["@lsp.type.formatSpecifier"] = { fg = c.struct },
        ["@lsp.type.interface"] = { fg = c.interface },
        ["@lsp.type.invalidEscapeSequence"] = { fg = c.error },
        ["@lsp.type.keyword"] = { fg = c.keyword },
        ["@lsp.typemod.decorator.attribute"] = { fg = c.attribute },
        ["@lsp.typemod.derive"] = { fg = c.interface },
        ["@lsp.typemod.enum"] = { fg = c.enum },
        ["@lsp.typemod.enumMember"] = { fg = c.constant },
        ["@lsp.typemod.function"] = { fg = c.method },
        ["@lsp.typemod.interface.declaration"] = { fg = c.interface },
        ["@lsp.typemod.interface.library"] = { fg = c.interface },
        ["@lsp.typemod.macro"] = { fg = c.macro },
        ["@lsp.typemod.method"] = { fg = c.method },
        ["@lsp.typemod.operator.controlFlow"] = { fg = c.keyword },
        ["@lsp.typemod.property"] = { fg = c.member },
        ["@lsp.typemod.property.declaration"] = { fg = c.member },
        ["@lsp.typemod.struct"] = { fg = c.struct },
        ["@lsp.typemod.typeAlias.library"] = { fg = c.struct },
        ["@lsp.typemod.typeParameter.declaration"] = { fg = c.struct },
        ["@lsp.typemod.variable"] = { fg = c.variable },
        ["@module"] = { fg = c.namespace },
        ["@string.documentation"] = { fg = c.comment },
        ["@string.escape"] = { fg = c.escape },
        ["@variable"] = { fg = c.variable },
        ["@variable.member"] = { fg = c.member },

        -- CSharp
        ["@lsp.type.constant.cs"] = { fg = c.constant },
        ["@lsp.type.extensionMethod.cs"] = { fg = c.method },
        ["@lsp.type.field.cs"] = { fg = c.constant },
        ["@lsp.type.namespace.cs"] = { fg = c.struct },
        ["@lsp.type.stringEscapeCharacter.cs"] = { fg = c.escape },
        ["csIsType"] = { fg = c.operator },
        ["csTypeOfOperand"] = { fg = c.operator },

        -- Rust
        ["@lsp.mod.crateRoot"] = { fg = c.namespace },
        ["@lsp.mod.declaration.rust"] = { fg = c.member },
        ["@lsp.typemod.const.constant.rust"] = { fg = c.constant },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@lsp.typemod.parameter.declaration.rust"] = { fg = c.variable },
        ["@lsp.typemod.punctuation.unsafe.rust"] = { fg = c.delimiter },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },

        -- Editorconfig
        ["dosiniLabel"] = { fg = c.member },
        ["editorconfigUnknownProperty"] = { fg = c.redundant },

        -- Neovim
        ColorColumn = { fg = c.fg, bg = c.window_accent }, -- Columns set with `colorcolumn`
        Conceal = { fg = c.redundant, bg = c.none }, -- Grayed out
        Cursor = { fg = c.fg, bg = c.macro }, -- Character under the cursor
        CursorIM = { fg = c.fg, bg = c.bg }, -- Character under the cursor in IME mode
        CursorLine = { fg = c.keyword, bg = c.none }, -- Screen line at the cursor
        CursorLineNr = { fg = c.redundant, bg = c.none }, -- Unknown
        DiagnosticError = { fg = c.error },
        DiagnosticHint = { fg = c.hint },
        DiagnosticInfo = { fg = c.info },
        DiagnosticOk = { fg = c.ok },
        DiagnosticUnderlineError = { underline = true, sp = c.error },
        DiagnosticUnderlineHint = { underline = true, sp = c.hint },
        DiagnosticUnderlineInfo = { underline = true, sp = c.info },
        DiagnosticUnderlineOk = { underline = true, sp = c.ok },
        DiagnosticUnderlineWarn = { underline = true, sp = c.warn },
        DiagnosticUnnecessary = { fg = c.redundant },
        DiagnosticVirtualTextError = { fg = c.error },
        DiagnosticVirtualTextHint = { fg = c.hint },
        DiagnosticVirtualTextInfo = { fg = c.info },
        DiagnosticVirtualTextOk = { fg = c.ok },
        DiagnosticVirtualTextWarn = { fg = c.warn },
        DiagnosticWarn = { fg = c.warn },
        DiffAdd = { fg = c.ok }, -- Diff add
        DiffChange = { fg = c.warn }, -- Diff change
        DiffDelete = { fg = c.error }, -- Diff delete
        Directory = { fg = c.namespace },
        EndOfBuffer = { fg = c.bg }, -- End of buffer `~`
        ErrorMsg = { fg = c.error }, -- Error messages on the commandline
        FloatBorder = { fg = c.macro, bg = c.none },
        FloatTitle = { fg = c.macro, bg = c.none },
        Folded = { fg = c.keyword, bg = c.none }, -- Folded gutter
        IncSearch = { fg = c.bg, bg = c.macro }, -- Yank highlight
        LineNr = { fg = c.redundant, bg = c.none }, -- Current line number
        LineNrAbove = { fg = c.redundant, bg = c.none }, -- Above current line numbers
        LineNrBelow = { fg = c.redundant, bg = c.none }, -- Below current line numbers
        LspInlayHint = { fg = c.inlay, bg = c.window_bg },
        MatchParen = { bg = c.namespace }, -- Matching pair highlight
        NonText = { fg = c.redundant },
        Normal = { fg = c.fg, bg = c.bg }, -- Current window
        NormalFloat = { bg = c.window_bg }, -- Normal text in floating windows
        NormalNC = { fg = c.fg, bg = c.bg }, -- Non-current window
        NormalSB = { fg = c.fg, bg = c.bg }, -- Normal text in sidebar
        Pmenu = { bg = c.window_bg },
        StatusLine = { fg = c.fg, bg = c.bg },
        StatusLineNC = { fg = c.fg, bg = c.bg },
        TabLine = { fg = c.fg, bg = c.window_accent },
        TabLineFill = { bg = c.bg },
        TabLineSel = { fg = c.window_bg, bg = c.keyword },
        VertSplit = { fg = c.window_accent, bg = c.window_bg }, -- Vertical split border
        WinBar = { fg = c.fg }, -- bg = c.window_bg
        WinBarNC = { fg = c.fg },
        WinSeparator = { fg = c.window_split, bg = c.bg }, -- Window border
        healthError = { fg = c.error },
        healthSuccess = { fg = c.ok },
        healthWarning = { fg = c.warn },
        lCursor = { fg = c.fg, bg = c.macro }, -- Character under the cursor when `language-mapping`

        -- BlinkCmp
        BlinkCmpDocBorder = { fg = c.macro, bg = c.window_bg },
        BlinkCmpItemIdx = { fg = c.number },
        BlinkCmpMenuBorder = { fg = c.macro, bg = c.window_bg },
        BlinkCmpSignatureHelpBorder = { fg = c.macro, bg = c.window_bg },

        -- Cmp
        CmpDocumentation = { fg = c.fg, bg = c.window_bg },
        CmpDocumentationBorder = { fg = c.window_accent, bg = c.window_bg },
        CmpGhostText = { fg = c.redundant },
        CmpItemAbbr = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated = { fg = c.redundant, bg = c.none, strikethrough = true },
        CmpItemAbbrMatch = { fg = c.macro, bg = c.none },
        CmpItemAbbrMatchFuzzy = { fg = c.keyword, bg = c.none },

        -- Copilot
        CopilotAnnotation = { fg = c.redundant },
        CopilotSuggestion = { fg = c.inlay },

        -- DAP
        DapBreakpoint = { fg = c.error },
        DapBreakpointCondition = { fg = c.error },
        DapLogPoint = { fg = c.error },
        DapStopped = { fg = c.warn },
        DapStoppedLine = { bg = c.error },
        NvimDapVirtualText = { fg = c.hint },
        NvimDapVirtualTextChanged = { fg = c.warn },

        -- DAP UI
        DapUIPlayPause = { fg = c.ok },
        DapUIPlayPauseNC = { fg = c.ok },
        DapUIRestart = { fg = c.warn },
        DapUIRestartNC = { fg = c.warn },
        DapUIStepBack = { fg = c.info },
        DapUIStepBackNC = { fg = c.info },
        DapUIStepInto = { fg = c.info },
        DapUIStepIntoNC = { fg = c.info },
        DapUIStepOut = { fg = c.info },
        DapUIStepOutNC = { fg = c.info },
        DapUIStepOver = { fg = c.info },
        DapUIStepOverNC = { fg = c.info },
        DapUIStop = { fg = c.error },
        DapUIStopNC = { fg = c.error },

        -- Dashboard NVIM
        DashboardDesc = { fg = c.string },
        DashboardFiles = { fg = c.string },
        DashboardFooter = { fg = c.macro },
        DashboardHeader = { fg = c.keyword },
        DashboardIcon = { fg = c.namespace },
        DashboardKey = { fg = c.keyword },
        DashboardMruIcon = { fg = c.keyword },
        DashboardMruTitle = { fg = c.keyword },
        DashboardProjectIcon = { fg = c.keyword },
        DashboardProjectTitle = { fg = c.keyword },
        DashboardProjectTitleIcon = { fg = c.keyword },
        DashboardShortCut = { fg = c.macro },
        DashboardShortCutIcon = { fg = c.macro },

        -- Kubectl
        KubectlDebug = { fg = c.module },
        KubectlDeprecated = { fg = c.redundant },
        KubectlError = { fg = c.error },
        KubectlExperimental = { fg = c.namespace },
        KubectlGray = { fg = c.delimiter },
        KubectlHeader = { fg = c.keyword },
        KubectlInfo = { fg = c.info },
        KubectlNote = { fg = c.hint },
        KubectlPending = { fg = c.string },
        KubectlSuccess = { fg = c.ok },
        KubectlWarning = { fg = c.warn },

        -- Lazy
        LazyButton = { fg = c.fg, bg = c.window_accent },
        LazyButtonActive = { fg = c.bg, bg = c.macro },
        LazyComment = { fg = c.comment },
        LazyH1 = { fg = c.bg, bg = c.macro },
        LazyProgressDone = { fg = c.keyword, bold = true },
        LazyProgressTodo = { fg = c.macro, bold = true },
        LazyProp = { fg = c.macro },
        LazyReasonPlugin = { fg = c.comment },
        LazySpecial = { fg = c.macro },
        Title = { fg = c.macro },

        -- LSP Lens
        LspLens = { fg = c.redundant },

        -- Markview
        MarkviewCode = { bg = c.window_bg },
        MarkviewCodeInfo = { bg = c.window_bg },
        MarkviewHeading1 = { fg = c.black, bg = c.attribute },
        MarkviewHeading1Sign = { fg = c.attribute },
        MarkviewHeading2 = { fg = c.black, bg = c.namespace },
        MarkviewHeading2Sign = { fg = c.namespace },
        MarkviewHeading3 = { fg = c.black, bg = c.module },
        MarkviewHeading3Sign = { fg = c.module },
        MarkviewHeading4 = { fg = c.black, bg = c.method },
        MarkviewHeading4Sign = { fg = c.method },
        MarkviewHeading5 = { fg = c.black, bg = c.macro },
        MarkviewHeading5Sign = { fg = c.macro },
        MarkviewHeading6 = { fg = c.black, bg = c.struct },
        MarkviewHeading6Sign = { fg = c.struct },
        MarkviewInlineCode = { bg = c.window_bg },

        -- Mason
        MasonHeader = { fg = c.bg, bg = c.macro },
        MasonHighlight = { fg = c.keyword, bg = c.none },
        MasonHighlightBlock = { fg = c.macro, bg = c.window_accent },
        MasonHighlightBlockBold = { fg = c.window_accent, bg = c.macro },
        MasonMuted = { fg = c.redundant, bg = c.none },
        MasonMutedBlock = { fg = c.fg, bg = c.window_accent },

        -- Neogit
        NeogitBranch = { fg = c.macro },
        NeogitBranchHead = { fg = c.struct },
        NeogitChangeAdded = { bg = c.ok },
        NeogitChangeCopied = { bg = c.ok },
        NeogitChangeDeleted = { bg = c.error },
        NeogitChangeModified = { bg = c.warn },
        NeogitChangeNewFile = { bg = c.ok },
        NeogitChangeRenamed = { bg = c.warn },
        NeogitChangeUnmerged = { bg = c.redundant },
        NeogitChangeUpdated = { bg = c.warn },
        NeogitDiffAdd = { bg = c.ok, fg = c.black },
        NeogitDiffAddHighlight = { fg = c.ok, bg = c.bg },
        NeogitDiffAdditions = { fg = c.ok },
        NeogitDiffContext = { fg = c.fg },
        NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg },
        NeogitDiffDelete = { bg = c.error, fg = c.black },
        NeogitDiffDeleteHighlight = { fg = c.error, bg = c.bg },
        NeogitDiffDeletions = { fg = c.error },
        NeogitFold = { fg = c.redundant },
        NeogitHead = { fg = c.keyword },
        NeogitHunkHeaderHighlight = { fg = c.fg, bg = c.bg },
        NeogitObjectId = { fg = c.string },
        NeogitRebaseDone = { fg = c.ok },
        NeogitRemote = { fg = c.struct },
        NeogitSectionHeader = { fg = c.module },
        NeogitSectionHeaderCount = { fg = c.number },
        NeogitSignatureBad = { fg = c.error },
        NeogitSignatureGood = { fg = c.ok },
        NeogitSignatureGoodExpired = { fg = c.ok },
        NeogitSignatureGoodExpiredKey = { fg = c.ok },
        NeogitSignatureGoodRevokedKey = { fg = c.ok },
        NeogitSignatureGoodUnknown = { fg = c.ok },
        NeogitSignatureMissing = { fg = c.warn },
        NeogitSignatureNone = { fg = c.redundant },
        NeogitStash = { fg = c.redundant },
        NeogitStatusHEAD = { fg = c.macro },
        NeogitSubtleText = { fg = c.keyword },
        NeogitTagDistance = { fg = c.number },
        NeogitTagName = { fg = c.comment },

        -- Noice
        NoiceAttr = { fg = c.fg },
        NoiceFormatProgressDone = { bg = c.macro },

        -- Notify
        NotifyBackground = { bg = c.bg },
        NotifyINFOBody = { fg = c.fg },

        -- Nvim Tree
        NvimTreeFileIcon = { fg = c.macro },
        NvimTreeFolderIcon = { fg = c.namespace },
        NvimTreeSymlinkIcon = { fg = c.comment },

        -- Oil
        OilFile = { fg = c.macro },
        OilLink = { fg = c.keyword },
        OilLinkTarget = { fg = c.comment },

        -- Snacks
        SnacksDashboardDir = { fg = c.namespace, bg = c.bg },
        SnacksDashboardFile = { fg = c.macro, bg = c.bg },
        SnacksDashboardHeader = { fg = c.namespace, bg = c.bg },
        SnacksPicker = { fg = c.fg, bg = c.bg },

        -- Telescope
        TelescopeBorder = { fg = c.macro, bg = c.window_bg },
        TelescopeMatching = { fg = c.macro, bg = c.window_bg },
        TelescopeNormal = { fg = c.fg, bg = c.bg },

        -- Treesitter Context
        TreesitterContentLineNumber = { bg = c.bg, link = c.none },
        TreesitterContext = { bg = c.bg, link = c.none },
        TreesitterContextBottom = { underline = true, sp = c.fg },
        TreesitterContextLineNumberBottom = { underline = true, sp = c.fg },

        -- Which Key
        WhichKey = { fg = c.namespace },
        WhichKeyDesc = { fg = c.namespace },
        WhichKeyFloat = { bg = c.window_bg },
        WhichKeyGroup = { fg = c.namespace },
        WhichKeySeparator = { fg = c.namespace },
        WhichKeyValue = { fg = c.namespace },
    }

    for group, hl in pairs(highlights) do
        hl = type(hl) == "string" and { link = hl } or hl
        ---@diagnostic disable-next-line: param-type-mismatch
        vim.api.nvim_set_hl(0, group, hl)
    end
end

return M
