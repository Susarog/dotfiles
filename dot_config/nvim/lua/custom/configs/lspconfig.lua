local on_attach = require("plugins.configs.lspconfig").on_attach
-- local capabilities = require("plugins.configs.lspconfig").capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.foldingRange = {
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright", "gopls", "volar", "hls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local clangdCapabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = "utf-8"
lspconfig.clangd.setup {
  capabilities = clangdCapabilities,
}

--
-- lspconfig.pyright.setup { blabla}
