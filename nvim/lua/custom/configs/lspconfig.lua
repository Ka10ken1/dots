local config = require("plugins.configs.lspconfig")
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

local function common_setup(server)
  server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

common_setup(lspconfig.tsserver)

common_setup(lspconfig.pyright)

common_setup(lspconfig.clangd)

common_setup(lspconfig.rust_analyzer)

common_setup(lspconfig.ocamlls)

