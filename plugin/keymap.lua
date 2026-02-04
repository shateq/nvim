--[[  KEYMAP  --]]
local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map("n", "<space><space>x", "<cmd>source %<CR>")
map("n", "<space>x", ":.lua<CR>")

--map("n", "<leader>g", "vi<yf>a</>PT>i")
map("n", "<leader>h", "<cmd>noh<CR>")
map("n", "<leader>f", "<cmd>find ")
map("n", "<leader>s", "<cmd>%s/foo/bar/g<Left><Left>") --replace all

-- [T]oggle line numbers
map("n", "<leader>Tr", "<cmd>set relativenumber!<CR>")
map("n", "<leader>Tn", "<cmd>set nu!<CR>")
map("n", "<leader>T0", "<cmd>set nonu! nornu!<CR>")

-- TERMINAL
map("n", "<leader>:", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.clocalmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 6)
end)
map("t", "<esc><esc>", "<c-\\><c-n>")
--map("n", "<leader>pv", vim.cmd.Ex)

-- EDITOR
map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
map("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
-- TABS
map("n", "<leader>T", "<cmd>tabs<CR>")
map("n", "<leader><C-t>", "<cmd>tabnew<CR>")
map("n", "ZW", "<cmd>tabclose<CR>")
-- gt, gT
map("n", "<M-h>", "<cmd>tabprevious<CR>")
map("n", "<M-l>", "<cmd>tabnext<CR>")

-- vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
-- vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
