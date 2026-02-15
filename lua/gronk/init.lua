local M = {}

local function set_highlights(highlights)
    local groups = vim.tbl_keys(highlights)

    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, highlights[group])
    end
end

local function link_highlights(links)
    local groups = vim.tbl_keys(links)

    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { link = links[group] })
    end
end

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.cmd("syntax reset")

    vim.o.background = "dark"
    vim.g.colors_name = "gronk"

    local c = require("gronk.colors")

    local specs = {
        -- Core
        Comment = { fg = c.comment },
        Constant = { fg = c.constant, bg = c.none },
        Delimiter = { fg = c.operator },
        Enum = { fg = c.enum, bg = c.none },
        File = { fg = c.macro, bg = c.none },
        Function = { fg = c.method, bg = c.none },
        Identifier = { fg = c.member },
        Interface = { fg = c.interface, bg = c.none },
        Keyword = { fg = c.keyword, bg = c.none },
        Module = { fg = c.module, bg = c.none },
        Number = { fg = c.number, bg = c.none },
        Operator = { fg = c.operator, bg = c.none },
        Special = { fg = c.keyword },
        String = { fg = c.string, bg = c.none },
        Text = { fg = c.fg, bg = c.none },
        Type = { fg = c.struct },
        Variable = { fg = c.variable, bg = c.none },

        -- Treesitter / LSP
        ["@attribute"] = { fg = c.attribute },
        ["@constant.macro"] = { fg = c.macro },
        ["@function.macro"] = { fg = c.macro },
        ["@lsp.mod.attribute"] = { fg = c.attribute },
        ["@lsp.mod.declaration"] = { fg = c.module },
        ["@lsp.mod.library"] = { fg = c.module },
        ["@lsp.mod.mutable"] = { underline = true },
        ["@lsp.mod.unsafe"] = { fg = c.error },
        ["@lsp.type.builtinType"] = { fg = c.keyword },
        ["@lsp.type.constant"] = { fg = c.constant },
        ["@lsp.type.enum"] = { fg = c.enum },
        ["@lsp.type.extensionMethod"] = { fg = c.method },
        ["@lsp.type.field"] = { fg = c.variable },
        ["@lsp.type.fieldName"] = { fg = c.member },
        ["@lsp.type.formatSpecifier"] = { fg = c.struct },
        ["@lsp.type.interface"] = { fg = c.interface },
        ["@lsp.type.invalidEscapeSequence"] = { fg = c.error },
        ["@lsp.type.keyword"] = { fg = c.keyword },
        ["@lsp.type.namespace"] = { fg = c.namespace },
        ["@lsp.type.punctuation"] = { fg = c.operator },
        ["@lsp.type.stringEscapeCharacter"] = { fg = c.escape },
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
        ["@punctuation.special"] = { fg = c.operator },
        ["@string.documentation"] = { fg = c.comment },
        ["@string.escape"] = { fg = c.escape },
        ["@variable"] = { fg = c.variable },
        ["@variable.member"] = { fg = c.member },

        -- CSharp
        csIsType = { fg = c.operator },
        csTypeOfOperand = { fg = c.operator },

        -- Rust
        ["@lsp.mod.crateRoot"] = { fg = c.namespace },
        ["@lsp.mod.declaration.rust"] = { fg = c.member },
        ["@lsp.typemod.const.constant.rust"] = { fg = c.constant },
        ["@lsp.typemod.namespace.crateRoot"] = { fg = c.namespace },
        ["@lsp.typemod.parameter.declaration.rust"] = { fg = c.variable },
        ["@lsp.typemod.punctuation.unsafe.rust"] = { fg = c.operator },
        ["@type.qualifier.rust"] = { fg = c.keyword, underline = true },

        -- Editorconfig
        dosiniLabel = { fg = c.member },
        editorconfigUnknownProperty = { fg = c.redundant },

        -- Neovim UI
        ColorColumn = { fg = c.fg, bg = c.window_accent },
        Conceal = { fg = c.redundant, bg = c.none },
        Cursor = { fg = c.fg, bg = c.macro },
        CursorIM = { fg = c.fg, bg = c.bg },
        CursorLine = { fg = c.keyword, bg = c.none },
        CursorLineNr = { fg = c.redundant, bg = c.none },
        DiagnosticError = { fg = c.error },
        DiagnosticHint = { fg = c.hint },
        DiagnosticInfo = { fg = c.info },
        DiagnosticOk = { fg = c.ok },
        DiagnosticUnderlineError = { underline = true, sp = c.error },
        DiagnosticUnderlineHint = { underline = false, sp = c.hint },
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
        DiffAdd = { fg = c.ok },
        DiffChange = { fg = c.warn },
        DiffDelete = { fg = c.error },
        Directory = { fg = c.namespace },
        EndOfBuffer = { fg = c.bg },
        ErrorMsg = { fg = c.error },
        FloatBorder = { fg = c.macro, bg = c.none },
        FloatTitle = { fg = c.macro, bg = c.none },
        Folded = { fg = c.keyword, bg = c.none },
        IncSearch = { fg = c.bg, bg = c.macro },
        LineNr = { fg = c.redundant, bg = c.none },
        LspInlayHint = { fg = c.inlay, bg = c.window_bg },

        MatchParen = { bg = c.white, bold = true },
        NonText = { fg = c.redundant },
        Normal = { fg = c.fg, bg = c.bg },
        NormalFloat = { bg = c.window_bg },
        NormalNC = { fg = c.fg, bg = c.bg },
        NormalSB = { fg = c.fg, bg = c.bg },
        Pmenu = { bg = c.window_bg },
        StatusLine = { fg = c.fg, bg = c.bg },
        TabLine = { fg = c.fg, bg = c.window_accent },
        TabLineFill = { bg = c.bg },
        TabLineSel = { fg = c.window_bg, bg = c.keyword },
        Title = { fg = c.macro },
        VertSplit = { fg = c.window_accent, bg = c.window_bg },
        WinBar = { fg = c.fg },
        WinBarNC = { fg = c.fg },
        WinSeparator = { fg = c.window_split, bg = c.bg },
        healthError = { fg = c.error },
        healthSuccess = { fg = c.ok },
        healthWarning = { fg = c.warn },

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
        DapStopped = { fg = c.warn },
        DapStoppedLine = { bg = c.error },
        NvimDapVirtualText = { fg = c.hint },
        NvimDapVirtualTextChanged = { fg = c.warn },

        -- DAP UI
        DapUIPlayPause = { fg = c.ok },
        DapUIRestart = { fg = c.warn },
        DapUIStepBack = { fg = c.info },
        DapUIStepInto = { fg = c.info },
        DapUIStepOut = { fg = c.info },
        DapUIStepOver = { fg = c.info },
        DapUIStop = { fg = c.error },

        -- Dashboard
        DashboardDesc = { fg = c.string },
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
        KubectlGray = { fg = c.operator },
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

        -- LSP Lens
        LspLens = { fg = c.redundant },

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
        NeogitDiffAdd = { fg = c.black, bg = c.ok },
        NeogitDiffAddHighlight = { fg = c.ok, bg = c.bg },
        NeogitDiffAdditions = { fg = c.ok },
        NeogitDiffContext = { fg = c.fg },
        NeogitDiffContextHighlight = { fg = c.fg, bg = c.bg },
        NeogitDiffDelete = { fg = c.black, bg = c.error },
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
        TreesitterContentLineNumber = { bg = c.bg },
        TreesitterContext = { bg = c.bg },
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

    local links = {
        -- Custom semantic aliases
        Array = "Delimiter",
        Boolean = "Keyword",
        Class = "Type",
        Color = "Special",
        Constructor = "Keyword",
        Copilot = "Directory",
        Default = "Text",
        EnumMember = "Constant",
        Event = "Special",
        Field = "Identifier",
        Folder = "Directory",
        Key = "Identifier",
        Method = "Function",
        Namespace = "Directory",
        Null = "NonText",
        Object = "Keyword",
        Package = "Module",
        Property = "Identifier",
        Reference = "Variable",
        Snippet = "File",
        Statement = "Keyword",
        Struct = "Type",
        TypeParameter = "@lsp.type.typeParameter",
        Unit = "Type",
        Value = "String",

        -- Treesitter links
        ["@boolean"] = "Boolean",
        ["@character"] = "Number",
        ["@constant"] = "Constant",
        ["@constructor"] = "Type",

        -- Cmp / editor UI aliases
        LineNrAbove = "LineNr",
        LineNrBelow = "LineNr",
        StatusLineNC = "StatusLine",
        lCursor = "Cursor",

        -- DAP
        DapBreakpointCondition = "DapBreakpoint",
        DapLogPoint = "DapBreakpoint",

        -- DAP UI
        DapUIPlayPauseNC = "DapUIPlayPause",
        DapUIRestartNC = "DapUIRestart",
        DapUIStepBackNC = "DapUIStepBack",
        DapUIStepIntoNC = "DapUIStepInto",
        DapUIStepOutNC = "DapUIStepOut",
        DapUIStepOverNC = "DapUIStepOver",
        DapUIStopNC = "DapUIStop",

        -- Dashboard
        DashboardFiles = "DashboardDesc",
    }

    set_highlights(specs)
    link_highlights(links)
end

return M
