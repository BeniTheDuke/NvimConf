require "nvchad.autocmds"

-- Make folds work with autosession
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = { "*.md", "*.markdown" },
  callback = function()
    vim.schedule(function()
      vim.cmd("silent! normal! zx")
    end)
  end,
})
