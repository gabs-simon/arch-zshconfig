vim.opt.termguicolors = true
require("bufferline").setup{
  options = {
    separator_style = "slope",
    diagnostics = "nvim_lsp"
  },
}

local bufferline = require("bufferline")

vim.keymap.set("n", "<leader>bl", vim.cmd.BufferLineCycleNext)
vim.keymap.set("n", "<leader>bh", vim.cmd.BufferLineCyclePrev)
vim.keymap.set("n", "<leader>1", function () bufferline.go_to_buffer(1, true) end )
vim.keymap.set("n", "<leader>2", function () bufferline.go_to_buffer(2, true) end )
vim.keymap.set("n", "<leader>3", function () bufferline.go_to_buffer(3, true) end )
vim.keymap.set("n", "<leader>4", function () bufferline.go_to_buffer(4, true) end )
vim.keymap.set("n", "<leader>5", function () bufferline.go_to_buffer(5, true) end )
vim.keymap.set("n", "<leader>6", function () bufferline.go_to_buffer(6, true) end )
vim.keymap.set("n", "<leader>7", function () bufferline.go_to_buffer(7, true) end )
vim.keymap.set("n", "<leader>8", function () bufferline.go_to_buffer(8, true) end )
vim.keymap.set("n", "<leader>9", function () bufferline.go_to_buffer(9, true) end )
vim.keymap.set("n", "<leader>0", function () bufferline.go_to_buffer(10, true) end )
