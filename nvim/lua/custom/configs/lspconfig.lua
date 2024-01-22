local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities
local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

local function common_setup(server)
  server.setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

common_setup(lspconfig.tsserver)

common_setup(lspconfig.clangd)

common_setup(lspconfig.texlab)

common_setup(lspconfig.bashls)

common_setup(lspconfig.ocamllsp)

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
}
