local M = {}

function M.merge(c, highlights, prefix)
    local kinds = {
        Array         = { fg = c.delimiter, bg = c.none },
        Boolean       = { fg = c.keyword, bg = c.none },
        Class         = { fg = c.struct, bg = c.none },
        Color         = "Special",
        Constant      = { fg = c.constant, bg = c.none },
        Constructor   = { fg = c.keyword, bg = c.none },
        Copilot       = { fg = c.namespace, bg = c.none },
        Default       = { fg = c.fg, bg = c.none },
        Enum          = { fg = c.enum, bg = c.none },
        EnumMember    = { fg = c.constant, bg = c.none },
        Event         = "Special",
        Field         = { fg = c.member, bg = c.none },
        File          = { fg = c.macro, bg = c.none },
        Folder        = { fg = c.namespace, bg = c.none },
        Function      = { fg = c.method, bg = c.none },
        Interface     = { fg = c.interface, bg = c.none },
        Key           = { fg = c.member, bg = c.none },
        Keyword       = { fg = c.keyword, bg = c.none },
        Method        = { fg = c.method, bg = c.none },
        Module        = { fg = c.module, bg = c.none },
        Namespace     = { fg = c.namespace, bg = c.none },
        Null          = { fg = c.redundant, bg = c.none },
        Number        = { fg = c.number, bg = c.none },
        Object        = { fg = c.keyword, bg = c.none },
        Operator      = { fg = c.operator, bg = c.none },
        Package       = { fg = c.module, bg = c.none },
        Property      = { fg = c.member, bg = c.none },
        Reference     = { fg = c.variable, bg = c.none },
        Snippet       = { fg = c.macro, bg = c.none },
        String        = { fg = c.string, bg = c.none },
        Struct        = { fg = c.struct, bg = c.none },
        Text          = { fg = c.fg, bg = c.none },
        TypeParameter = "@lsp.type.typeParameter",
        Unit          = { fg = c.struct, bg = c.none },
        Value         = { fg = c.string, bg = c.none },
        Variable      = { fg = c.variable, bg = c.none },
    }

    for kind, attributes in pairs(kinds) do
        local prefixed_key = prefix .. kind
        highlights[prefixed_key] = attributes
    end
end

return M
