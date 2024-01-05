local lsp = require("lsp-zero")
lsp.preset("recommended")

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "tsserver",
    "eslint",
    "lua_ls",
    "rust_analyzer"
  },
  handlers = {
    lsp.default_setup
  }
})

require("lspconfig").lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()
