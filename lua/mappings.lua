require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


-- Molten
vim.keymap.set("n", "<localleader>mf", ":MoltenInit<CR>",
    { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
    { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })
vim.keymap.set("n", "<localleader>oo", ":noautocmd MoltenEnterOutput<CR>",
    { silent = true, desc = "Molten: enter output" })
vim.keymap.set("n", "<localleader>mi", ":noautocmd MoltenImagePopup<CR>",
    { silent = true, desc = "Molten: enter output" })


-- Diffview
vim.keymap.set("n", "<leader>do", ":DiffviewOpen<CR>",
    { silent = true, desc = "Diffview: Open" })
vim.keymap.set("n", "<leader>dc", ":DiffviewClose<CR>",
    { silent = true, desc = "Diffview: Close" })


-- NeoGit
vim.keymap.set("n", "<leader>gg", ":Neogit<CR>",
    { silent = true, desc = "Neogit" })
vim.keymap.set("n", "<leader>gc", ":NeogitCommit<CR>",
    { silent = true, desc = "Neogit COMMIT" })
vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>",
    { silent = true, desc = "Neogit PULL" })
vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>",
    { silent = true, desc = "Neogit PUSH" })


-- Telescope
vim.keymap.set("n", "<leader>tgc", ":Telescope git_commits<CR>",
    { silent = true, desc = "Git commits" })
vim.keymap.set("n", "<leader>tgs", ":Telescope git_status<CR>",
    { silent = true, desc = "Git status" })
vim.keymap.set("n", "<leader>tgS", ":Telescope git_stash<CR>",
    { silent = true, desc = "Git stash" })
vim.keymap.set("n", "<leader>tgb", ":Telescope git_branches<CR>",
    { silent = true, desc = "Git branches" })
vim.keymap.set("n", "<leader>tk", ":Telescope keymaps<CR>",
    { silent = true, desc = "keymaps" })

-- Change buffers with tab
vim.keymap.set("n", "<Tab>", ":bnext<CR>", 
    { silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", 
    { silent = true, desc = "Previous buffer" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
