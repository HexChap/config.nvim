return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {},
  config = function()
    require('typescript-tools').setup {
      settings = {
        tsserver_plugins = {
          -- for TypeScript v4.9+
          '@styled/typescript-styled-plugin',
          -- or for older TypeScript versions
          -- "typescript-styled-plugin",
        },
      },
    }
  end,
  require('lspconfig').ruff.setup {
    init_options = {
      settings = {
        lint = {
          enable = false,
        },
      },
    },
  },
  -- require('lspconfig').pylsp.setup {
  -- settings = {
  --   pylsp = {
  --     plugins = {
  --       pycodestyle = { enabled = false },
  --       flake8 = { enabled = false },
  --       jedi_definition = { enabled = true },
  --       jedi_symbols = { enabled = true },
  --       pyflakes = { enabled = false },
  --       jedi_completion = { enabled = true },
  --       rope_autoimport = { enabled = true },
  --       pyls_isort = { enabled = true },
  --     },
  --   },
  -- },
  -- },
  -- require('lspconfig').pyright.setup {
  --   capabilities = capabilities,
  --   on_attach = on_attach,
  --   on_new_config = function(config, root_dir)
  --     local env = vim.trim(vim.fn.system('cd "' .. root_dir .. '"; poetry env info -p 2>/dev/null'))
  --     if string.len(env) > 0 then
  --       config.settings.python.pythonPath = env .. '/bin/python'
  --     end
  --   end,
  -- },
}
