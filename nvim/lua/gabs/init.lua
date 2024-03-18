vim.g.mapleader = " "
vim.opt.scrolloff = 10
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80,120"
vim.opt.cursorline = true
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.smartindent = true

require("gabs.lazy")
require("gabs.plugins")
require("gabs.remap")

if vim.g.neovide then
  require("gabs.neovide")
end

if vim.fn.has("unnamedplus") == 1 then
    vim.cmd("set clipboard=unnamedplus")
else
    vim.cmd("set clipboard=unnamed")
end

