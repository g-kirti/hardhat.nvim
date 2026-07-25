# 🚧 Hardhat

A 'hi-vis' Neovim colourscheme inspired by construction sites, industrial equipment, and safety signage.

This theme uses semantic colour groupings to create a visual language for code. The goal is to let you scan code by colour almost as much as by text. The palette is also designed to stay comfortable and easy on the eyes during long sessions.

---
<table width="100%">
  <tr>
    <th>hardhat</th>
    <th>hardhat-diffused</th>
  </tr>
  <tr>
    <td width="50%">
      <img width="615" height="665" alt="Hardhat_1" src="https://github.com/user-attachments/assets/598258d6-30fc-4973-8454-77f8bda175e8" />
    </td>
    <td width="50%">
      <img width="615" height="665" alt="Hardhat_2" src="https://github.com/user-attachments/assets/0a9d35e2-9930-4eb8-996c-c725a53e006e" />
    </td>
  </tr>
  <tr>
    <th>hardhat-vivid</th>
    <th>hardhat-light</th>
  </tr>
  <tr>
    <td width="50%">
      <img width="615" height="665" alt="Hardhat_3" src="https://github.com/user-attachments/assets/7c9e490d-d63a-4f54-a091-9549fd2500dc" />
    </td>
    <td width="50%">
      <img width="615" height="665" alt="Hardhat_4" src="https://github.com/user-attachments/assets/1138138e-1856-4141-903a-9881d6db240d" />
    </td>
  </tr>
</table>

## Features

- Three contrast and one light variant:
  - `hardhat` (default)
  - `hardhat-vivid`
  - `hardhat-diffused`
  - `hardhat-light`
- User customization for:
  - plugin support
  - transparency
  - style toggles (italics/bold/comment italics)
  - highlight overrides
- Extra themes for other apps

## Requirements

- Neovim 0.9+
- [`termguicolors`](https://neovim.io/doc/user/options.html#'termguicolors') enabled


## Installation

Install with your plugin manager of choice.

### lazy.nvim

```lua
{
  "g-kirti/hardhat.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("hardhat").setup({
      -- optional settings
    })
    vim.cmd.colorscheme("hardhat")
  end,
}
```

### packer.nvim

```lua
use {
  "g-kirti/hardhat.nvim",
  config = function()
    require("hardhat").setup({})
    vim.cmd("colorscheme hardhat")
  end,
}
```

## Usage

Load a variant with:

```vim
:colorscheme hardhat
:colorscheme hardhat-vivid
:colorscheme hardhat-diffused
:colorscheme hardhat-light
```

## Configuration

`require("hardhat").setup(opts)` accepts:

```lua
opts = {
  plugin_support = true,  -- true | false | table | { whitelist = { ... } }
  styles = {              -- text style overrides
    italic_comments = false,
    italics = true,
    bold = true,
  },
  transparent = false,    -- transparent background
  hl_overrides = {        -- table of highlight group overrides  
--    ~~~ Do follow this example format ~~~
--	Normal = { bg = "#888888", italic = true },
--	["@string"] = { fg = "#00abff" },
  },
}
```

### `plugin_support`

Controls plugin-specific highlight layers.

- `true` : enable all supported plugin mappings
- `false`: disable all plugin mappings
- `{ lsp = true, treesitter = false,  }`: enable/disable map
- `{ whitelist = { "lsp", "treesitter" } }`  : enable only listed mappings

<details>
<summary>Currently supported plugins</summary>

- `lsp`
- `treesitter`
- `neotree`

</details>

## Design note

Hardhat uses LSP and Treesitter highlights to build a semantic colour system. The colours aren't meant to be strict classifications, but rather to give a quick visual feel for what different parts of the code are doing.

For example, green generally represents execution, helping function calls and runtime behaviour stand out as the parts of the code that are "actively doing work." Orange represents the language itself, highlighting keywords, constants, macros, and other syntax that define and shape the program. Yellow represents structure, bringing attention to types, control flow, and important definitions such as functions, making the overall flow of the code easier to glean.

This kind of colour mapping may not suit everyone's preferences, but I find that it creates a rather consistent visual language that becomes easier to recognise with time.

| Colour | Represents |
| ------ | ---------- |
| 🟠 Orange | Keywords, constants, and language constructs |
| 🟡 Yellow | Types, control flow and important definitions |
| 🟢 Green | Execution, function calls and runtime syntax |
| 🔵 Blue | User-defined data such as members, properties and parameters |
| 🩵 Cyan | Built-ins, standard libraries and language-provided features |
| 🔴 Red | Literal values (numbers, floats, booleans) |
| ⚪ White | Strings, operators and neutral syntax |
| ⚫ Black | Comments |

Each colour also has light and dim variants to create hierarchy without changing its semantic meaning.

## Bonus: 🪖 Hardhat M1

A tactical spin on Hardhat with a muted olive and earth-tone army aesthetic. 

<table width="100%">
  <tr>
    <th>hardhat-m1</th>
  </tr>
  <tr>
    <td align="center">
      <img width="1047" height="872" alt="Screenshot From 2026-07-24 22-56-52" src="https://github.com/user-attachments/assets/77e11866-744c-4324-bc43-da8707f5eec8" />
    </td>
  </tr>
</table>

```vim
:colorscheme hardhat-m1
```

---
### 🤝 Contributions are welcome!
