Require neovim version >= v9.0

# File Structure

```
.
├── init.lua
├── lazy-lock.json
├── lua
│   ├── config
│   │   ├── keymaps.lua
│   │   └── options.lua
│   └── plugins
│       ├── colorscheme.lua
│       ├── formatting.lua
│       ├── git.lua
│       ├── lsp.lua
│       ├── mini.lua
│       └── ui.lua
└── README.md
```

# Plugins

## Plugin Manager

- [Lazy.nvim](https://github.com/folke/lazy.nvim)

## mini.nvim

- [mini.nvim](https://github.com/echasnovski/mini.nvim)
  - basics, surround, comment, pairs, move, splitjoin
  - pick, files, fuzzy, extra
  - statusline, trailspace, icons, indentscope, hipatterns, animate

## LSP

- Native Neovim LSP (`vim.lsp.config` / `vim.lsp.enable`)
  - lua_ls, gopls, clangd

## Formatting

- [conform.nvim](https://github.com/stevearc/conform.nvim)

## UI

- [trouble.nvim](https://github.com/folke/trouble.nvim)

## Git

- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)

## Theme

- [rose-pine](https://github.com/rose-pine/neovim)
- [tokyonight](https://github.com/folke/tokyonight.nvim)
