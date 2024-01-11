vim.g.mapleader = " "
vim.opt.scrolloff = 10
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.colorcolumn = "80,120"
vim.opt.cursorline = true

require("gabs.lazy")
require("gabs.plugins")
require("gabs.remap")
