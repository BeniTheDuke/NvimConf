require "nvchad.options"

-- add yours here!

local o = vim.o

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
-- o.foldenable = true
o.foldlevel = 99


vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
