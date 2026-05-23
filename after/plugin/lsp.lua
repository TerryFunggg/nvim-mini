-- Mason: LSP server manager
require('mason').setup()

-- CMP capabilities (used by all LSP servers)
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Mason-LSPConfig: auto-installs and configures LSP servers
require('mason-lspconfig').setup({
  handlers = {
    -- Default handler for ALL servers
    function(server_name)
      require('lspconfig')[server_name].setup({
        capabilities = capabilities,
      })
    end,

    -- Per-server overrides below
    -- lua_ls: configure for Neovim runtime
    ['lua_ls'] = function()
      require('lspconfig').lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = { version = 'LuaJIT' },
            workspace = {
              checkThirdParty = false,
              library = {
                vim.env.VIMRUNTIME,
                '${3rd}/luv/library',
              },
            },
            completion = { callSnippet = 'Replace' },
            diagnostics = { disable = { 'missing-fields' } },
          },
        },
      })
    end,

    -- html: configure for embedded languages
    ['html'] = function()
      require('lspconfig').html.setup({
        capabilities = capabilities,
        configurationSection = { 'html', 'css', 'javascript' },
        embeddedLanguages = { css = true, javascript = true },
        provideFormatter = true,
      })
    end,
  },
})

-- Fidget: LSP status spinner
require('fidget').setup()

-- LSP keymaps (runs every time an LSP attaches to a buffer)
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', { clear = true }),
  callback = function(event)
    local map = function(keys, func, desc)
      vim.keymap.set('n', keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
    end

    -- Jump to definition
    map('gd', vim.lsp.buf.definition, '[G]o to [D]efinition')

    -- Go to declaration
    map('gD', vim.lsp.buf.declaration, '[G]o to [D]eclaration')

    -- Show references
    map('gr', require('telescope.builtin').lsp_references, '[G]o to [R]eferences')

    -- Show implementation
    map('gi', require('telescope.builtin').lsp_implementations, '[G]o to [I]mplementation')

    -- Show type definition
    map('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')

    -- Show hover documentation
    map('K', vim.lsp.buf.hover, 'Hover Documentation')

    -- Signature help
    map('<C-k>', vim.lsp.buf.signature_help, 'Signature Help')

    -- Rename symbol
    map('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')

    -- Code actions
    map('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

    -- Format buffer
    map('<leader>f', function()
      vim.lsp.buf.format({ async = true })
    end, '[F]ormat')

    -- Workspace symbol search
    map('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

    -- Document symbol search
    map('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')

    -- Navigate diagnostics
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = event.buf, desc = 'Go to previous diagnostic' })
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = event.buf, desc = 'Go to next diagnostic' })
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { buffer = event.buf, desc = 'Show diagnostic [E]rror' })
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { buffer = event.buf, desc = 'Diagnostics to [Q]uickfix' })
  end,
})

-- Diagnostic display config
vim.diagnostic.config({
  virtual_text = false,
  float = {
    source = 'always',
    border = 'rounded',
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
