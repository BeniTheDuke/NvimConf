-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
        ["+"] = { "bash", "-lc", "iconv -f utf-8 -t utf-16le | /mnt/c/Windows/System32/clip.exe" },
        ["*"] = { "bash", "-lc", "iconv -f utf-8 -t utf-16le | /mnt/c/Windows/System32/clip.exe" },
      },
    paste = {
        ["+"] = { "bash", "-lc",
          "powershell.exe -NoProfile -Command '$OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8; [Console]::Write((Get-Clipboard -Raw).Replace(\"`r\",\"\"))'"
        },
        ["*"] = { "bash", "-lc",
          "powershell.exe -NoProfile -Command '$OutputEncoding = [Console]::OutputEncoding = [System.Text.Encoding]::UTF8; [Console]::Write((Get-Clipboard -Raw).Replace(\"`r\",\"\"))'"
        },
      },
    cache_enabled = 0,
}

-- M.nvdash = { load_on_startup = true }
-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
