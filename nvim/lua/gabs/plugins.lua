require("lazy").setup({ { "rebelot/kanagawa.nvim" },
  "folke/which-key.nvim",
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  {
    "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function() require("nvim-tree").setup {} end
  },
  "mbbill/undotree",
  --- Uncomment these if you want to manage the language servers from neovim
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  { "folke/noice.nvim", event = "VeryLazy", dependencies = { "rcarriga/nvim-notify", "MunifTanjim/nui.nvim" } },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "goolord/alpha-nvim", config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end },
  { "akinsho/toggleterm.nvim", version = "*", config = true }
})

