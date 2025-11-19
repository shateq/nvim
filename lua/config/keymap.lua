--[[  KEYMAP  --]]
local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map("n", "<leader>g", "vi<yf>a</>PT>i")
map("n", "<leader>h", "<cmd>noh<CR>")
map("n", "<leader>f", ":find ") -- execute current file
map("n", "<leader>s", ":%s/foo/bar/g<Left><Left>") --replace all
map("n", "<leader>%", "<cmd>source %<CR>")
-- TERMINAL
map("n", "<leader>pt", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.clocalmd.wincmd("J")
  vim.api.nvim_win_set_height(0,6)
end)
map("t", "<esc><esc>", "<c-\\><c-n>")
--map("n", "<leader>pv", vim.cmd.Ex)
-- EDITOR
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
--vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
--vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })
-- TABS
map("n", "<leader>T", "<cmd>tabs<CR>")
map("n", "<leader><C-t>", "<cmd>tabnew<CR>")
map("n", "ZW", "<cmd>tabclose<CR>")
-- gt, gT
map("n", "<M-h>", "<cmd>tabprevious<CR>")
map("n", "<M-l>", "<cmd>tabnext<CR>")

-- WINDOWS 
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-l>", "<C-w><C-l>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")

-- toggle switches
map("n", "<leader>tc", function()
  if not vim.opt.colorcolumn then
    vim.opt.colorcolumn = "80"
  end
end)

-- on relative numbers on turn on only line numbers, then switch
map("n", "<leader>tn", function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
    vim.wo.number = true
  else
    vim.wo.relativenumber = true
  end
end)
