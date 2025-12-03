return {
    'MeanderingProgrammer/render-markdown.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-mini/mini.icons' },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    ft = {"markdown", "rmd"},
    opts = {
      file_types = { "markdown", "rmd" },
    },
}
