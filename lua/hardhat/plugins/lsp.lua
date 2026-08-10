local M = {}

M.load_plugin_syntax = function(p)
  return {
    -- ---------------------------------------------------------------------------
    -- LITERALS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.boolean"]                      = { fg = p.red },
    ["@lsp.type.number"]                       = { fg = p.red_light },

    ["@lsp.type.string"]                       = { fg = p.white_light },
    ["@lsp.typemod.string.injected"]           = { italic = true },

    ["@lsp.type.regexp"]                       = { fg = p.green_light },
    ["@lsp.type.formatSpecifier"]              = { fg = p.green_light },
    ["@lsp.type.escapeSequence"]               = { fg = p.green_light },
    ["@lsp.type.invalidEscapeSequence"]        = { fg = p.red_light },

    -- ---------------------------------------------------------------------------
    -- IDENTIFIERS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.variable"]                     = {},
    ["@lsp.typemod.variable.declaration"]      = {},
    ["@lsp.typemod.variable.defaultLibrary"]   = { fg = p.cyan },
    ["@lsp.typemod.variable.definition"]       = {},
    ["@lsp.typemod.variable.callable"]         = { fg = p.green },
    ["@lsp.typemod.variable.static"]           = {},
    ["@lsp.typemod.variable.injected"]         = { italic = true },

    ["@lsp.type.property"]                     = {},
    ["@lsp.typemod.property.readonly"]         = {},
    ["@lsp.typemod.property.declaration"]      = {},
    ["@lsp.typemod.property.definition"]       = {},
    ["@lsp.typemod.property.defaultLibrary"]   = { fg = p.cyan_light },

    ["@lsp.type.parameter"]                    = { fg = p.blue_light },
    ["@lsp.typemod.parameter.readonly"]        = {},
    ["@lsp.typemod.parameter.declaration"]     = {},
    ["@lsp.typemod.parameter.definition"]      = {},

    -- ---------------------------------------------------------------------------
    -- KEYWORDS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.keyword"]                      = {},
    ["@lsp.typemod.keyword.async"]             = { fg = p.green_dim },
    ["@lsp.typemod.keyword.injected"]          = { italic = true },

    ["@lsp.type.modifier"]                     = {},

    ["@lsp.type.operator"]                     = { link = "@operator" },
    ["@lsp.typemod.operator.injected"]         = { italic = true },

    -- ---------------------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.function"]                     = {},
    ["@lsp.typemod.function.async"]            = { fg = p.green_light },
    ["@lsp.typemod.function.defaultLibrary"]   = { fg = p.cyan },

    ["@lsp.type.method"]                       = {},
    ["@lsp.typemod.method.async"]              = { fg = p.green_light },
    ["@lsp.typemod.method.defaultLibrary"]     = { fg = p.cyan },

    -- ---------------------------------------------------------------------------
    -- TYPES
    -- ---------------------------------------------------------------------------
    ["@lsp.type.const"]                        = {},
    ["@lsp.type.constParameter"]               = { fg = p.orange_light },

    ["@lsp.type.struct"]                       = {},
    ["@lsp.typemod.struct.defaultLibrary"]     = { fg = p.orange_dim },

    ["@lsp.type.class"]                        = {},
    ["@lsp.typemod.class.defaultLibrary"]      = { fg = p.cyan },

    ["@lsp.type.namespace"]                    = {},
    ["@lsp.typemod.namespace.crateRoot"]       = { fg = p.cyan_dim },
    ["@lsp.typemod.namespace.defaultLibrary"]  = { fg = p.cyan_dim },

    ["@lsp.type.event"]                        = {},

    ["@lsp.type.enum"]                         = { fg = p.orange_dim },
    ["@lsp.typemod.enum.defaultLibrary"]       = { fg = p.orange_dim },

    ["@lsp.type.enumMember"]                   = { fg = p.orange },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = p.orange },

    ["@lsp.type.type"]                         = {},
    ["@lsp.typemod.type.defaultLibrary"]       = { fg = p.orange_dim },
    ["@lsp.typemod.type.bool"]                 = { fg = p.red_light },

    ["@lsp.type.typeAlias"]                    = { fg = p.yellow_dim },
    ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = p.orange_dim },

    ["@lsp.type.typeParameter"]                = { fg = p.yellow_light },

    ["@lsp.type.derive"]                       = { fg = p.yellow_light },
    ["@lsp.typemod.derive"]                    = {},
    ["@lsp.typemod.derive.library"]            = {},
    ["@lsp.typemod.derive.attribute"]          = { fg = p.yellow_light },
    ["@lsp.typemod.derive.macro"]              = { fg = p.yellow_light },

    ["@lsp.type.generic"]                      = { fg = p.yellow_dim },
    ["@lsp.typemod.generic"]                   = {},
    ["@lsp.typemod.generic.attribute"]         = { fg = p.yellow_light },

    ["@lsp.type.interface"]                    = { fg = p.yellow },

    ["@lsp.type.label"]                        = { fg = p.yellow },

    ["@lsp.type.lifetime"]                     = { fg = p.yellow_light },

    ["@lsp.type.static"]                       = {},

    ["@lsp.type.union"]                        = {},

    -- ---------------------------------------------------------------------------
    -- TYPES (BUILTIN / STDLIB)
    -- ---------------------------------------------------------------------------
    ["@lsp.type.builtinType"]                  = { fg = p.orange_dim },

    ["@lsp.type.attributeBracket"]             = {},
    ["@lsp.type.builtinAttribute"]             = { fg = p.cyan_light },

    ["@lsp.type.selfKeyword"]                  = { fg = p.cyan_dim, italic = true },
    ["@lsp.type.selfTypeKeyword"]              = { fg = p.cyan_dim, italic = true },

    -- ---------------------------------------------------------------------------
    -- METAPROGRAMMING
    -- ---------------------------------------------------------------------------
    ["@lsp.type.macro"]                        = {},
    ["@lsp.type.procMacro"]                    = { fg = p.yellow_light },
    ["@lsp.typemod.macro.defaultLibrary"]      = { fg = p.cyan_light },
    ["@lsp.typemod.macro.globalScope"]         = { fg = p.orange_light },

    ["@lsp.type.decorator"]                    = { fg = p.blue_light, italic = true },
    ["@lsp.type.deriveHelper"]                 = { fg = p.blue_light, italic = true },

    -- ---------------------------------------------------------------------------
    -- DIAGNOSTICS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.unresolvedReference"]          = { fg = p.red, bold = true },

    -- ---------------------------------------------------------------------------
    -- DOCUMENTATION
    -- ---------------------------------------------------------------------------
    ["@lsp.type.comment"]                      = { link = "@comment" },

    -- ---------------------------------------------------------------------------
    -- MODS
    -- ---------------------------------------------------------------------------
    ["@lsp.mod.abstract"]                      = {},
    ["@lsp.mod.associated"]                    = {},
    ["@lsp.mod.bool"]                          = {},
    ["@lsp.mod.consuming"]                     = {},
    ["@lsp.mod.declaration"]                   = {},
    ["@lsp.mod.defintion"]                     = {},
    ["@lsp.mod.defaultLibrary"]                = {},
    ["@lsp.mod.interface"]                     = {},
    ["@lsp.mod.library"]                       = {},
    ["@lsp.mod.mutable"]                       = {},
    ["@lsp.mod.number"]                        = {},
    ["@lsp.mod.pointer"]                       = {},
    ["@lsp.mod.public"]                        = {},
    ["@lsp.mod.reference"]                     = {},
    ["@lsp.mod.readonly"]                      = {},
    ["@lsp.mod.signature"]                     = {},
    ["@lsp.mod.slice"]                         = {},
    ["@lsp.mod.static"]                        = {},
    ["@lsp.mod.struct"]                        = {},
    ["@lsp.mod.trait"]                         = {},

    ["@lsp.mod.classScope"]                    = {},
    ["@lsp.mod.fileScope"]                     = {},
    ["@lsp.mod.functionScope"]                 = {},
    ["@lsp.mod.globalScope"]                   = {},

    ["@lsp.mod.crateRoot"]                     = { fg = p.cyan_dim },
    ["@lsp.mod.intraDocLink"]                  = { fg = p.blue_light, underline = true },

    ["@lsp.mod.unsafe"]                        = { fg = p.red, bold = true },
    ["@lsp.typemod.punctuation.unsafe"]        = { fg = p.red, bold = true },
    ["@lsp.typemod.keyword.unsafe"]            = { fg = p.red, bold = true },
    ["@lsp.typemod.function.unsafe"]           = { fg = p.red, bold = true },

    ["@lsp.mod.deprecated"]                    = { strikethrough = true },
    ["@lsp.mod.injected"]                      = { italic = true },
  }
end

return M
