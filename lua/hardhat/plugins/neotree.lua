local M = {}

M.load_plugin_syntax = function(p)
  return {
    NeoTreeNormal         = { fg = p.white_dim, bg = p.bg_dark },
    NeoTreeNormalNC       = { fg = p.white_dim, bg = p.bg_dark },
    NeoTreeFloatNormal    = { fg = p.white_dim, bg = p.bg_dark },
    NeoTreeFloatBorder    = { fg = p.white_dim, bg = p.bg_dark },
    NeoTreeEndOfBuffer    = { fg = p.bg_dark, bg = p.bg_dark },
    NeoTreeWinSeparator   = { fg = p.bg},
    NeoTreeVertSplit      = { fg = p.bg},

    NeoTreeDirectoryIcon  = { fg = p.black_light },
    NeoTreeDirectoryName  = { fg = p.white_dim },

    NeoTreeGitAdded       = { fg = p.green_dim },
    NeoTreeGitConflict    = { fg = p.orange_dim },
    NeoTreeGitDeleted     = { fg = p.red_dim },
    NeoTreeGitIgnored     = { fg = p.black_light },
    NeoTreeGitModified    = { fg = p.yellow_dim },
    NeoTreeGitRenamed     = { fg = p.yellow_dim },
    NeoTreeGitStaged      = { fg = p.green_dim },
    NeoTreeGitUntracked   = { fg = p.blue_dim },
  }
end

return M
