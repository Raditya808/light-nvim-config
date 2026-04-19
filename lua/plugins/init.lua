return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    url = "https://codeberg.org/andyg/leap.nvim",
    lazy = false,
    config = function()
      -- Pakai add_default_mappings (fungsi baru)
      require("leap").add_default_mappings()
    end,
  },

  {
  "github/copilot.vim",
  lazy = false,
  config = function()
    -- disable the default Tab mapping that copilot.vim sets
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_assume_mapped = true
  end,
  },

{
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      indent = { char = "▎" },
      scope = { enabled = false }, --  nyari warna aneh-aneh
    },
  }

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
 
}
