local lsp = require("lsp-zero")

lsp.preset("recommended")

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "ts_ls",
    "lua_ls",
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

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  })
})

lsp.on_attach(function(client, bufnr)
  local opt = function(cmt)
    return { buffer = bufnr, desc = cmt }
  end
  vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opt("View details"))
  vim.keymap.set("n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", opt("Go to definition"))
  vim.keymap.set("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opt("Go to declaration"))
  vim.keymap.set("n", "<leader>lr", "<cmd>lua vim.lsp.buf.references()<cr>", opt("Go to references"))
  vim.keymap.set("n", "<leader>li", "<cmd>lua vim.lsp.buf.implementation()<cr>", opt("Go to implementation"))
  vim.keymap.set("n", "<leader>lo", '<cmd>lua vim.lsp.buf.type_definition()<cr>', opt("Go to type definition"))
  vim.keymap.set("n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opt("View signature help"))
  vim.keymap.set("n", "<leader>ll", "<cmd>lua vim.diagnostic.open_float()<cr>", opt("View diagnostics"))
  vim.keymap.set("n", "<leader>l[", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opt("Go to previous diagnostic"))
  vim.keymap.set("n", "<leader>l]", "<cmd>lua vim.diagnostic.goto_next()<cr>", opt("Go to next diagnostic"))
  vim.keymap.set("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>", opt("Rename symbol"))
  vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<cr>", opt("Code action"))
  vim.keymap.set("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opt("Format buffer"))
end)

lsp.setup()
