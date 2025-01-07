local M = {}

local kinds = require("gronk.groups.kinds")

function M.get(c, opts)
    local highlights = {
        CmpGhostText = { fg = c.redundant },
        CmpDocumentation = { fg = c.fg, bg = c.window_bg },
        CmpDocumentationBorder = { fg = c.window_accent, bg = c.window_bg },
        CmpItemAbbr = { fg = c.fg, bg = c.none },
        CmpItemAbbrDeprecated = { fg = c.redundant, bg = c.none, strikethrough = true },
        CmpItemAbbrMatch = { fg = c.macro, bg = c.none },
        CmpItemAbbrMatchFuzzy = { fg = c.keyword, bg = c.none },

        CmpItemKindArray = { fg = c.delimiter, bg = c.none },
        CmpItemKindBoolean = { fg = c.keyword, bg = c.none },
        CmpItemKindClass = { fg = c.struct, bg = c.none },
        CmpItemKindColor = "Special",
        CmpItemKindConstant = { fg = c.constant, bg = c.none },
        CmpItemKindConstructor = { fg = c.keyword, bg = c.none },
        CmpItemKindCopilot = { fg = c.namespace, bg = c.none },
        CmpItemKindDefault = { fg = c.fg, bg = c.none },
        CmpItemKindEnum = { fg = c.enum, bg = c.none },
        CmpItemKindEnumMember = { fg = c.constant, bg = c.none },
        CmpItemKindEvent = "Special",
        CmpItemKindField = { fg = c.member, bg = c.none },
        CmpItemKindFile = { fg = c.macro, bg = c.none },
        CmpItemKindFolder = { fg = c.namespace, bg = c.none },
        CmpItemKindFunction = { fg = c.method, bg = c.none },
        CmpItemKindInterface = { fg = c.interface, bg = c.none },
        CmpItemKindKey = { fg = c.member, bg = c.none },
        CmpItemKindKeyword = { fg = c.keyword, bg = c.none },
        CmpItemKindMethod = { fg = c.method, bg = c.none },
        CmpItemKindModule = { fg = c.module, bg = c.none },
        CmpItemKindNamespace = { fg = c.namespace, bg = c.none },
        CmpItemKindNull = { fg = c.redundant, bg = c.none },
        CmpItemKindNumber = { fg = c.number, bg = c.none },
        CmpItemKindObject = { fg = c.keyword, bg = c.none },
        CmpItemKindOperator = { fg = c.operator, bg = c.none },
        CmpItemKindPackage = { fg = c.module, bg = c.none },
        CmpItemKindProperty = { fg = c.member, bg = c.none },
        CmpItemKindReference = { fg = c.variable, bg = c.none },
        CmpItemKindSnippet = { fg = c.macro, bg = c.none },
        CmpItemKindString = { fg = c.string, bg = c.none },
        CmpItemKindStruct = { fg = c.struct, bg = c.none },
        CmpItemKindText = { fg = c.fg, bg = c.none },
        CmpItemKindTypeParameter = "@lsp.type.typeParameter",
        CmpItemKindUnit = { fg = c.struct, bg = c.none },
        CmpItemKindValue = { fg = c.string, bg = c.none },
        CmpItemKindVariable = { fg = c.variable, bg = c.none },
    }

    require("gronk.groups.kinds").merge(c, highlights, "CmpItemKind")

    return highlights
end

return M
