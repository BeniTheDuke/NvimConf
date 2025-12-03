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
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_enabled = true,
        auto_save_enabled = true,
        auto_restore_enabled = true,
        auto_session_suppress_dirs = { "~/" },
      }
    end,
  },


  {
      "benlubas/molten-nvim",
      ft={"python"},
      version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
      build = ":UpdateRemotePlugins",
      dependencies = { "3rd/image.nvim" },
      init = function()
          -- these are examples, not defaults. Please see the readme
          vim.g.molten_image_provider = "image.nvim"
          vim.g.molten_output_win_max_height = 20
          vim.g.molten_kernels_by_filetype = {
            r = "ir-nvim",
          }
      end,
  },



  {
    "GCBallesteros/jupytext.nvim",
    config = true,
    lazy = false,
  },

  {
    "NeogitOrg/neogit",
    lazy = false,
  },

  {
    "sindrets/diffview.nvim",
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        adaptive_size = true,
      },
    },
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  }

}
