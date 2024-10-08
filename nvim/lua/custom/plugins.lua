local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = 'VeryLazy',
    opts = function()
      return require 'custom.configs.null-ls'
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        'eslint-lsp',
        'prettier',
        'typescript-language-server',
        'clangd',
        'clang-format',
        'rust-analyzer',
        'gdtoolkit',
        'pyright',
        'mypy',
        'ruff',
        'black',
        'gopls',
        'gofumpt',
        'goimports-reviser',
        'golines'
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end
  },
  {
    "rust-lang/rust.vim",
    ft = 'rust',
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "saecki/crates.nvim",
    dependencies = 'hrsh7th/nvim-cmp',
    ft = { 'rust', 'toml' },
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      crates.show()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require 'plugins.configs.cmp'
      table.insert(M.sources, { name = 'crates' })
      return M
    end
  },
  {
    "mistricky/codesnap.nvim",
      build = "make build_generator",
    keys = {
      { "<leader>cs", "<cmd>CodeSnap<cr>",     mode = "x", desc = "Save selected code snapshot into clipboard" },
      { "<leader>ss", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
    },
    opts = {
      save_path = "~/Pictures/Screenshots/",
      has_breadcrumbs = true,
      title = 'Double Dot Studios',
      watermark='Double Dot Studios',
      bg_theme = "bamboo",
    },
  }
}

return plugins
