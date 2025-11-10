local nvlsp = require("nvchad.configs.lspconfig")
nvlsp.defaults()


vim.lsp.config("pyright", {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  settings = {
    python = {
      venvPath = vim.env.HOME .. "/.venvs",
      venv = "nvim"
    }
  }
})

vim.lsp.config("ruff_lsp", {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
})

vim.lsp.config("r_language_server", {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
})

vim.lsp.enable({"pyright", "ruff_lsp", "r_language_server"})

-- read :h vim.lsp.config for changing options of lsp servers 
