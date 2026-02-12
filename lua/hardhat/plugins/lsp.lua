local M = {}

M.load_plugin_syntax = function(p)
  return {
    -- ---------------------------------------------------------------------------
    -- LITERALS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.boolean"]                      = { fg = p.red },
    ["@lsp.type.number"]                       = { fg = p.red },
    ["@lsp.type.string"]                       = { fg = p.white_light },
    ["@lsp.typemod.string.injected"]           = { italic = true },

    ["@lsp.type.escapeSequence"]               = { fg = p.green_light },
    ["@lsp.type.formatSpecifier"]              = { fg = p.orange_light },

    -- ---------------------------------------------------------------------------
    -- IDENTIFIERS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.variable"]                     = {},
    ["@lsp.type.property"]                     = {},
    ["@lsp.type.parameter"]                    = { fg = p.blue_light },

    ["@lsp.typemod.variable.callable"]         = { fg = p.green },
    ["@lsp.typemod.variable.static"]           = { fg = p.blue },
    ["@lsp.typemod.variable.defaultLibrary"]   = { fg = p.cyan_dim },
    ["@lsp.typemod.variable.injected"]         = { italic = true },

    -- ---------------------------------------------------------------------------
    -- KEYWORDS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.keyword"]                      = {},
    ["@lsp.typemod.keyword.async"]             = { fg = p.green_dim },
    ["@lsp.typemod.keyword.injected"]          = { italic = true },

    ["@lsp.typemod.operator.injected"]         = { italic = true },

    -- ---------------------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.function"]                     = {},
    ["@lsp.type.method"]                       = {},

    ["@lsp.typemod.function.defaultLibrary"]   = { fg = p.cyan },
    ["@lsp.typemod.method.defaultLibrary"]     = { fg = p.cyan },

    -- ---------------------------------------------------------------------------
    -- TYPES
    -- ---------------------------------------------------------------------------
    ["@lsp.type.struct"]                       = {},
    ["@lsp.type.class"]                        = {},
    ["@lsp.type.namespace"]                    = {},

    ["@lsp.type.enum"]                         = { fg = p.orange_dim },
    ["@lsp.type.enumMember"]                   = { fg = p.orange },

    ["@lsp.type.interface"]                    = { fg = p.yellow },
    ["@lsp.type.typeAlias"]                    = { fg = p.yellow_dim },
    ["@lsp.type.typeParameter"]                = { fg = p.yellow_light },
    ["@lsp.type.generic"]                      = { fg = p.yellow_dim },

    ["@lsp.type.lifetime"]                     = { fg = p.blue_dim, italic = true },

    -- ---------------------------------------------------------------------------
    -- TYPES (BUILTIN / STDLIB)
    -- ---------------------------------------------------------------------------
    ["@lsp.type.selfKeyword"]                  = { fg = p.cyan_dim, italic = true },
    ["@lsp.type.selfTypeKeyword"]              = { fg = p.cyan_dim, italic = true },

    ["@lsp.type.builtinType"]                  = { fg = p.orange_dim },
    ["@lsp.typemod.class.defaultLibrary"]      = { fg = p.red },

    ["@lsp.typemod.struct.defaultLibrary"]     = { fg = p.orange_dim },

    ["@lsp.typemod.enum.defaultLibrary"]       = { fg = p.orange_dim },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { fg = p.orange },

    ["@lsp.typemod.type.defaultLibrary"]       = { fg = p.orange_dim },
    ["@lsp.typemod.typeAlias.defaultLibrary"]  = { fg = p.orange_dim },

    -- ---------------------------------------------------------------------------
    -- METAPROGRAMMING
    -- ---------------------------------------------------------------------------
    ["@lsp.type.macro"]                        = {},
    ["@lsp.typemod.macro.defaultLibrary"]      = { fg = p.cyan },

    ["@lsp.type.decorator"]                    = { fg = p.blue_light, italic = true },
    ["@lsp.type.deriveHelper"]                 = { fg = p.blue_light, italic = true },

    -- ---------------------------------------------------------------------------
    -- DIAGNOSTICS
    -- ---------------------------------------------------------------------------
    ["@lsp.type.unresolvedReference"]          = { fg = p.red, bold = true },

    -- ---------------------------------------------------------------------------
    -- MODS
    -- ---------------------------------------------------------------------------
    ["@lsp.mod.declaration"]                   = { bold = true },
  }
end

return M
