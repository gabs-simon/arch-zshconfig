require("lazy").setup({
  -- kanagawa: theme
  { "rebelot/kanagawa.nvim" },
  -- telescope: search interface
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  -- telescope-media-files: media files search
  { "nvim-telescope/telescope-media-files.nvim" , dependencies = { "nvim-lua/popup.nvim" } },
  -- treesitter: syntax highlighter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  -- bufferline: open files & buffers as tabs
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  -- nvim-tree: file explorer as sidebar
  {
    "nvim-tree/nvim-tree.lua",
      version = "*",
      lazy = false,
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function() require("nvim-tree").setup {} end
  },
  -- undotree: keeps history files
  { "mbbill/undotree" },
  -- mason: install LSP servers
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  -- lsp-zero: prebuilt lsp setup with all requirements
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},
  -- noice: replacement for message, cmdline and popupmenu
  { "folke/noice.nvim", event = "VeryLazy", dependencies = { "rcarriga/nvim-notify", "MunifTanjim/nui.nvim" } },
  -- lualine: statusline replacement
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  -- alpha: better initial screen
  { "goolord/alpha-nvim" },
  -- copilot: coding assistant llm
  { "github/copilot.vim" },
  -- neorg: note-taking
  { "nvim-neorg/neorg",
    run = ":Neorg sync-parsers",
    requires = "nvim-lua/plenary.nvim"
  },
  -- vim-be-good: vim exercises
  { "ThePrimeagen/vim-be-good" },
  -- which-key: keybindings helper
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end
  },
  -- gitsigns: git changes in the gutter
  { "lewis6991/gitsigns.nvim" },
  -- neodev: helper for neovim setup
  { "folke/neodev.nvim", opts = {} },
  -- minimap: code minimap
  { "wfxr/minimap.vim" },
})

