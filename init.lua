--  [[ my minimal config --]]
vim.g.mapleader = ","
local o = vim.o

o.guicursor = "" -- i desperately need this one
o.clipboard = "unnamed,unnamedplus" -- sync system clipboard
o.history = 100
o.nu = true
o.relativenumber = true
o.wrap = true

o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true -- VERY important pls
o.smarttab = true
o.smartindent = true

o.scrolloff = 4
o.sidescrolloff = 4
o.signcolumn = "yes"
o.splitright = true
o.termguicolors = true

o.lazyredraw = true
o.synmaxcol = 300
o.cursorline = true -- highlight line
o.showmode = true -- false if there's status bar
-- Undo file
o.undofile = true
o.undodir = os.getenv "XDG_CACHE_HOME" .. "/vim/undodir"
o.backup = false
o.swapfile = false
o.updatetime = 300 -- swap file related
-- Search
o.inccommand = "split"
o.ignorecase = true
o.smartcase = true

require "config.lazy"
require "config.keymap"
require "config.autocmd"
