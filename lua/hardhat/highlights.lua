local M = {}

M.load_base_syntax = function(p)
    return {
        --		        >>> UI Elements <<<
        Normal                   = { fg = p.fg, bg = p.bg },
        NormalNC                 = { fg = p.fg, bg = p.bg },
        SignColumn               = { fg = p.fg, bg = p.bg },
        FoldColumn               = { fg = p.black_light, bg = p.bg },
        EndOfBuffer              = { fg = p.bg, bg = p.bg },

        NormalFloat              = { fg = p.fg, bg = p.bg },
        FloatBorder              = { fg = p.yellow_dim, bg = p.bg },

        Cursor                   = { fg = p.bg, bg = p.fg },
        CursorLine               = { bg = p.accent1 },
        CursorColumn             = { bg = p.accent1 },
        ColorColumn              = { bg = p.accent1 },

        LineNr                   = { fg = p.black_light },
        CursorLineNr             = { fg = p.yellow_dim, bold = true },

        VertSplit                = { fg = p.bg_dark, bg = p.bg },
        WinSeparator             = { fg = p.bg_dark, bg = p.bg },

        WinBar                   = { fg = p.white_light, bg = p.bg },
        WinBarNC                 = { fg = p.white_light, bg = p.bg },

        StatusLine               = { fg = p.fg, bg = p.bg_dark },
        StatusLineNC             = { fg = p.black_light, bg = p.bg_dark },

        Search                   = { fg = p.black, bg = p.yellow },
        IncSearch                = { fg = p.black, bg = p.orange },
        CurSearch                = { fg = p.black, bg = p.orange },
        Visual                   = { bg = p.accent2 },

        Directory                = { fg = p.white },
        Question                 = { fg = p.red },
        WildMenu                 = { fg = p.white_light, bg = p.bg_light },
        Title                    = { fg = p.yellow, bold = true },

        Pmenu                    = { fg = p.white_light, bg = p.bg_light },
        PmenuSel                 = { fg = p.black, bg = p.yellow },
        PmenuSbar                = { bg = p.bg_dark },
        PmenuThumb               = { bg = p.black_light },
        PmenuBorder              = { fg = p.yellow_dim, bg = p.bg },

        --              >>> Std Syntax <<<
        Comment                  = { fg = p.black_light },
        Constant                 = { fg = p.orange },
        String                   = { fg = p.white_light },
        Character                = { fg = p.cyan },
        Number                   = { fg = p.red },
        Boolean                  = { fg = p.red },
        Float                    = { fg = p.red },

        Identifier               = { fg = p.fg },
        Function                 = { fg = p.green },

        Statement                = { fg = p.orange },
        Conditional              = { fg = p.yellow },
        Repeat                   = { fg = p.yellow },
        Label                    = { fg = p.red_dim },
        Operator                 = { fg = p.white },
        Keyword                  = { fg = p.orange },
        Exception                = { fg = p.red },

        Include                  = { fg = p.red_dim },
        PreProc                  = { fg = p.orange },
        Define                   = { fg = p.orange },
        PreCondit                = { fg = p.orange },
        Macro                    = { fg = p.cyan },

        Type                     = { fg = p.yellow_dim },
        StorageClass             = { fg = p.yellow_dim },
        Structure                = { fg = p.yellow_dim },
        Typedef                  = { fg = p.orange },

        Special                  = { fg = p.orange },
        SpecialChar              = { fg = p.blue_light },
        Tag                      = { fg = p.orange },
        Delimiter                = { fg = p.white_dim },
        Debug                    = { fg = p.red },

        Underlined               = { underline = true },
        Ignore                   = { fg = p.black },
        Error                    = { fg = p.red, bold = true },
        Todo                     = { fg = p.blue, bold = true },

        --              >>> Diffs <<<
        Added                    = { fg = p.green_dim },
        Changed                  = { fg = p.yellow_dim },
        Removed                  = { fg = p.red_dim },
        DiffAdd                  = { fg = p.green_dim, bg = p.bg_dark },
        DiffChange               = { fg = p.yellow_dim, bg = p.bg_dark },
        DiffDelete               = { fg = p.red_dim, bg = p.bg_dark },
        DiffText                 = { fg = p.cyan_dim, bg = p.bg_dark },

        --              >>> Diagnostics <<<
        ErrorMsg                 = { fg = p.red },
        WarningMsg               = { fg = p.yellow },
        OkMsg                    = { fg = p.green },
        DiagnosticError          = { fg = p.red },
        DiagnosticWarn           = { fg = p.yellow },
        DiagnosticInfo           = { fg = p.blue },
        DiagnosticHint           = { fg = p.blue },
        DiagnosticOk             = { fg = p.green },
        DiagnosticUnnecessary    = { fg = p.white },
        DiagnosticUnderlineError = { sp = p.red, undercurl = true },
        DiagnosticUnderlineWarn  = { sp = p.yellow, undercurl = true },
        DiagnosticUnderlineInfo  = { sp = p.blue, undercurl = true },
        DiagnosticUnderlineHint  = { sp = p.blue, undercurl = true },
    }
end

return M
