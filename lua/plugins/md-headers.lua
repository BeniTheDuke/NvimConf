-- lua/plugins/md_headers.lua
return {
  "AntonVanAssche/md-headers.nvim",
  version = "*",
  ft = { "markdown", "rmd", "quarto"},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
  },
  opts = {},
  config = function(_, opts)
    require("md-headers").setup(opts)
    require("telescope").load_extension("md-headers")
  end,
}

