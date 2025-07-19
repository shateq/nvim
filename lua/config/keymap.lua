--[[  KEYMAP  --]]
local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map("n", "<leader>g", "vi<ywa</>PT>")
map("n", "<leader>h", "<cmd>noh<CR>")
map("n", "<leader>f", ":find ") -- execute current file
map("n", "<leader>s", ":%s/foo/bar/g<Left><Left>") --replace all
-- lua config helper
map("n", "<leader>%", "<cmd>source %<CR>")
map("n", "<leader>x", ":.lua<CR>")
map("v", "<leader>x", ":lua<CR>")
-- p for 'project'
map("n", "<leader>pv", "<cmd>Oil<CR>", { desc = "Open parent directory" })
--map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>pt", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0,6)
end)
map("t", "<esc><esc>", "<c-\\><c-n>")

-- EDITOR
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })

--vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "Next buffer" })
--vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "Previous buffer" })

-- tabs
map("n", "<leader><C-t>", "<cmd>tabnew<CR>")
map("n", "<leader><C-w>", "<cmd>tabclose<CR>")
map("n", "<leader><S-h>", "<cmd>tabprevious<CR>")
map("n", "<leader><S-l>", "<cmd>tabnext<CR>")

-- CTRL+<hjkl> to focus windows instead of win mode
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-l>", "<C-w><C-l>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")

map("n", "<F5>", "<cmd>resize +2<CR>")
map("n", "<F6>", "<cmd>resize -2<CR>")
map("n", "<F7>", "<cmd>vertical resize +2<CR>")
map("n", "<F8>", "<cmd>vertical resize -2<CR>")

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
