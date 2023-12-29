local plugins = {
 {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require('colorizer').setup()
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap"
  },
  {
    "mfussenegger/nvim-dap",
    config = function ()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    'mhartington/formatter.nvim',
    event = "VeryLazy",
    config = function ()
      require "custom.configs.formatter"
    end
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
 },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        'typescript-language-server',
        'js-debug-adapter',
        'eslint-lsp',
        'prettier',
        'clangd',
        'pyright',
        'rust-analyzer',
        'codedlldb',
        'bash-language-server',
        'ocaml-language-server',
        'clang-format'
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require 'plugins.configs.lspconfig'
      require 'custom.configs.lspconfig'
    end,

  }
}




return plugins
