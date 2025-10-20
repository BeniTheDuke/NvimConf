vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")
-- vim.opt.loadplugins = true

vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.o.guifont = "AnonymicePro Nerd Font"

local function ensure_rplugin()
  if vim.fn.exists(":UpdateRemotePlugins") == 0 then
    -- This defines :UpdateRemotePlugins
    vim.cmd("runtime plugin/rplugin.vim")
  end

  -- If the manifest doesn't exist yet, generate it once
  local manifest = vim.fn.stdpath("data") .. "/rplugin.vim"
  if vim.fn.filereadable(manifest) == 0 then
    pcall(vim.cmd, "UpdateRemotePlugins")
  end
end

-- Run after startup (once per session)
vim.api.nvim_create_autocmd("VimEnter", {
  callback = ensure_rplugin,
})



-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

-- vim.g.loaded_remote_plugins = nil
vim.g.loaded_python3_provider = nil

