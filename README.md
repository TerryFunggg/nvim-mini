Require neovim version >= v9.0

# File Structure

```
.
├── init.lua                            -- Entry point
├── after
│   └── plugin                          -- All custom plugin config files
│       ├── aerial.lua
│       ├── colors.lua
│       ├── gitsigns.lua
│       ├── indent-blankline.lua
│       ├── lsp.lua
│       ├── mini.lua
│       └── telescope.lua
├── lua                                 -- neo vim config
│   ├── myconfig
│   │   ├── init.lua                    -- nvim settings for better edit
│   │   ├── plugs.lua                   -- lazy plugin list
│   │   └── remap.lua                   -- key mapping
│   └── myextension                     -- some plugin write by own
│       ├── afterbufwrite.lua
│       ├── code-fold.lua
│       ├── init.lua
│       └── yankhighlight.lua
└── README.md
```

# Plugins

## Plugin Manager

- [Lazy.nvim](https://github.com/folke/lazy.nvim)

## LSP Plugins

- [mason.nvim](https://github.com/mason-org/mason.nvim) - Manage LSP servers 

- [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)

## Auto completion

- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - Autocompletion engine
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet support

## Tools

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Find, Filter, Preview, Pick. All lua, all the time. 

- [troble.nvim](https://github.com/folke/trouble.nvim) - A pretty diagnostics, references, telescope results, quickfix and location list 

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## Theme

- [rose-pine](https://github.com/rose-pine/neovim)

- [tokyonight](https://github.com/folke/tokyonight.nvim)
