local M = {}

M.load_plugin_syntax = function(p)
  return {
    -- ---------------------------------------------------------------
    -- LITERALS
    -- ---------------------------------------------------------------
    ["@number"]                  = { fg = p.red },
    ["@float"]                   = { fg = p.red },
    ["@boolean"]                 = { fg = p.red },

    ["@string"]                  = { fg = p.white_light },
    ["@string.escape"]           = { fg = p.green_light },
    ["@string.special"]          = { fg = p.red },
    ["@string.special.regexp"]   = { fg = p.red, bold = true },
    ["@string.special.url"]      = { fg = p.cyan, underline = true },

    ["@character"]               = { fg = p.cyan },

    ["@constant"]                = { fg = p.orange },
    ["@constant.builtin"]        = { fg = p.red },

    -- -----------------------------------------------------------------
    -- IDENTIFIERS
    -- -----------------------------------------------------------------
    ["@variable"]                = { fg = p.fg },
    ["@variable.builtin"]        = { fg = p.cyan_dim },
    ["@variable.parameter"]      = { fg = p.blue_light },
    ["@variable.member"]         = { fg = p.blue },
    ["@property"]                = { fg = p.blue },

    -- -----------------------------------------------------------------
    -- KEYWORDS
    -- -----------------------------------------------------------------
    ["@keyword"]                 = { fg = p.orange },

    ["@keyword.operator"]        = { fg = p.yellow },
    ["@keyword.conditional"]     = { fg = p.yellow },
    ["@keyword.repeat"]          = { fg = p.yellow },

    ["@keyword.type"]            = { fg = p.orange_dim },
    ["@keyword.modifier"]        = { fg = p.orange_dim },
    ["@keyword.directive"]       = { fg = p.orange_dim },

    ["@keyword.function"]        = { fg = p.green_dim },
    ["@keyword.coroutine"]       = { fg = p.green_dim },
    ["@keyword.return"]          = { fg = p.green_dim },
    ["@keyword.exception"]       = { fg = p.green_dim },

    ["@keyword.import"]          = { fg = p.red_dim },

    ["@label"]                   = { fg = p.yellow },
    ["@storageclass"]            = { fg = p.orange_dim },

    -- -----------------------------------------------------------------
    -- FUNCTIONS & METHODS
    -- -----------------------------------------------------------------
    ["@function"]                = { fg = p.yellow, bold = true },
    ["@function.method"]         = { fg = p.yellow, bold = true },

    ["@function.call"]           = { fg = p.green }, -- execution
    ["@function.method.call"]    = { fg = p.green },

    ["@function.macro"]          = { fg = p.cyan },
    ["@function.builtin"]        = { fg = p.cyan },

    -- -----------------------------------------------------------------
    -- TYPES & STRUCTURE
    -- -----------------------------------------------------------------
    ["@type"]                    = { fg = p.yellow_dim },
    ["@type.definition"]         = { fg = p.yellow },
    ["@type.qualifier"]          = { fg = p.yellow },

    ["@type.builtin"]            = { fg = p.orange_dim },

    ["@constructor"]             = { fg = p.yellow },
    ["@attribute"]               = { fg = p.blue_light },

    ["@module"]                  = { fg = p.cyan_dim },
    ["@module.builtin"]          = { fg = p.cyan_dim },

    -- -----------------------------------------------------------------
    -- OPERATORS & PUNCTUATION  
    -- -----------------------------------------------------------------
    ["@operator"]                = { fg = p.white },

    ["@punctuation.bracket"]     = { fg = p.white_dim },
    ["@punctuation.delimiter"]   = { fg = p.white_dim },
    ["@punctuation.special"]     = { fg = p.blue_dim },

    -- -----------------------------------------------------------------
    -- COMMENTS
    -- -----------------------------------------------------------------
    ["@comment"]                 = { fg = p.black_light },
    ["@comment.documentation"]   = { fg = p.black_light },

    ["@comment.todo"]            = { fg = p.blue, bold = true },
    ["@comment.warning"]         = { fg = p.yellow },
    ["@comment.error"]           = { fg = p.red },

    -- -----------------------------------------------------------------
    -- MARKUP
    -- -----------------------------------------------------------------
    ["@markup.heading"]          = { fg = p.blue, bold = true },
    ["@markup.strong"]           = { bold = true },
    ["@markup.italic"]           = { italic = true },
    ["@markup.strikethrough"]    = { strikethrough = true },

    ["@markup.raw"]              = { fg = p.yellow },
    ["@markup.link"]             = { fg = p.cyan, underline = true },
    ["@markup.link.label"]       = { fg = p.blue },
    ["@markup.list"]             = { fg = p.red },

    -- -----------------------------------------------------------------
    -- HTML
    -- -----------------------------------------------------------------
    ["@tag"]                     = { fg = p.orange },
    ["@tag.delimiter"]           = { fg = p.white_dim },

    ["@tag.attribute"]           = { fg = p.blue },

    ["@tag.qualifier"]           = { fg = p.cyan_dim },
    ["@tag.builtin"]             = { fg = p.orange_dim },
    }
end

return M
