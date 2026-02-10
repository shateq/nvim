--[[  KEYMAP  --]]
local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

map("n", "<space><space>x", "<cmd>source %<CR>")
map("n", "<space>x", ":.lua<CR>")

--map("n", "<leader>g", "vi<yf>a</>PT>i")
map("n", "<leader>h", "<cmd>noh<CR>")
-- map("n", "<leader>f", "<cmd>find ")
map("n", "<leader>s", ":%s/foo/bar/g<Left><Left>") --replace all
-- open with systems default handler
map("n", "<leader>O", function()
  vim.ui.open(vim.fn.expand("%"))
end)

-- [T]oggle anything
map("n", "<leader>TM", "<cmd>set modifiable!<CR>")
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
map("n", "<leader>n", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<leader>p", "<cmd>bprevious<CR>", { desc = "Previous buffer" })
-- TABS
map("n", "<leader>T", "<cmd>tabs<CR>")
map("n", "<leader><C-t>", "<cmd>tabnew<CR>")
map("n", "ZW", "<cmd>tabclose<CR>")
-- gt, gT
map("n", "<M-h>", "<cmd>tabprevious<CR>")
map("n", "<M-l>", "<cmd>tabnext<CR>")

-- vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
-- vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
