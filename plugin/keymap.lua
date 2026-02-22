--[[  KEYMAP  --]]
local map = vim.keymap.set

map("n", "q:", "<nop>")
map({ "n" }, "<C-q>", "<cmd>copen<CR>", { silent = true })
map("n", "<localleader><localleader>x", "<cmd>source %<CR>")

map("n", "<localleader>W", "<cmd>update<CR>")
map("n", "<localleader>h", "<cmd>noh<CR>")
map({ "n", "v" }, "<localleader>n", ":norm")
map("n", "<localleader>s", ":%s/") --replace all

map("n", "<leader>O", "<cmd>Open .<CR>", { desc = "Open current directory in file manager" })
map("n", "<leader>o", function()
  vim.ui.open(vim.fn.expand("%"))
end, { desc = "Open link with MIME handler" })

-- [T]oggle anything
map("n", "<leader>TM", "<cmd>set modifiable!<CR>")
map("n", "<leader>Tr", "<cmd>set relativenumber!<CR>")
map("n", "<leader>Tn", "<cmd>set nu!<CR>")
map("n", "<leader>T0", "<cmd>set nonu! nornu!<CR>")

-- EDITOR
map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
map("n", "<leader>n", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>p", "<cmd>bprevious<CR>", { desc = "Previous buffer" })

-- TABS
map("n", "<leader>T", "<cmd>tabs<CR>")
map("n", "<leader><C-t>", "<cmd>tabnew<CR>")
map("n", "ZW", "<cmd>tabclose<CR>")
-- gt, gT
-- map("n", "<M-h>", "<cmd>tabprevious<CR>")
-- map("n", "<M-l>", "<cmd>tabnext<CR>")

-- [c]uickFix
vim.keymap.set("n", "<M-h>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>cprev<CR>")

-- TERMINAL
map("n", "<leader>:", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.clocalmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 6)
end)
map("t", "<esc><esc>", "<c-\\><c-n>")

--map("n", "<leader>g", "vi<yf>a</>PT>i")
