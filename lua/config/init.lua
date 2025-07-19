--[[  OPTION  --]]
local opt = vim.opt

opt.guicursor = "" -- i desperately need this one
opt.clipboard = "unnamedplus" --system clipboard
opt.history = 50
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true

opt.nu = true
opt.relativenumber = true
opt.numberwidth = 4
opt.ruler = false
opt.scrolloff = 4 -- this is VERY cool
opt.sidescrolloff = 4

opt.wrap = true --text wrapping if goes out of focus
opt.linebreak = true

opt.shiftwidth = 2
opt.smarttab = true
opt.smartindent = true

-- Window
opt.splitright = true
opt.termguicolors = true
--opt.signcolumn = "yes"
opt.lazyredraw = true
opt.synmaxcol = 300
opt.timeoutlen = 500
opt.cursorline = true --highlight line
opt.showmode = false --uncomment if there is a statusbar
opt.showcmd = true

-- Undo file
opt.undofile = true
opt.undodir = os.getenv "XDG_CACHE_HOME" .. "/vim/undodir"
opt.backup = false
opt.swapfile = false
opt.updatetime = 300 -- swap file related
