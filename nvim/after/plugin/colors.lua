function Colorize(color)
  color = color or "kanagawa"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "BufferlineBackground", { bg = "#16161D" } )
  vim.api.nvim_set_hl(0, "BufferlineBuffer", { bg = "#16161D" } )
  vim.api.nvim_set_hl(0, "Normal", { background = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { background = "none" })
  vim.api.nvim_set_hl(0, "LineNrAbove", { foreground = "#363646", background = "none" }) 
  vim.api.nvim_set_hl(0, "LineNrBelow", { foreground = "#363646", background = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { foreground = "#54546D", background = "none" })
end

vim.keymap.set("n", "<leader>hl", function() vim.cmd.Telescope("highlights"); end)

Colorize()
Colorize()
