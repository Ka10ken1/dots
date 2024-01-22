local plugins = {
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require("rust-tools").setup(opts)
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup()
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    event = "VeryLazy",
    dependencies = "mfussenegger/nvim-dap",
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("core.utils").load_mappings "dap"
    end,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    config = function()
      require "custom.configs.formatter"
    end,
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "js-debug-adapter",
        "eslint-lsp",
        "prettier",
        "clangd",
        "pyright",
        "rust-analyzer",
        "codedlldb",
        "bash-language-server",
        "ocaml-language-server",
        "clang-format",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
}

return plugins
