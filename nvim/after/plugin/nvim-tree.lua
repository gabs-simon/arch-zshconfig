local api = require "nvim-tree.api"

vim.keymap.set("n", "<leader>e", function() api.tree.toggle({focus = true}); end )

vim.keymap.set("n", "<C-l>", function ()
  if vim.fn.bufname():match 'NvimTree_' then
    vim.cmd.wincmd 'p'
  else
    vim.cmd.BufferLineCycleNext()
  end
end )

vim.keymap.set("n", "<C-h>", function () 
  if vim.fn.bufname():match('NvimTree_') then
    vim.cmd.wincmd 'p'
  end
    vim.cmd.BufferLineCyclePrev()
end )
