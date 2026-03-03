--[[  KEYMAP  --]]
local map = vim.keymap.set

map("n", "q:", "<nop>")
map("n", "<localleader><localleader>x", "<cmd>source %<CR>")

map("n", "<localleader>W", "<cmd>update<CR>")
map("n", "<localleader>h", "<cmd>noh<CR>")
map("n", "<localleader>o", "o<Esc>")

map({ "n", "v" }, "<localleader>n", ":norm")
map("n", "<localleader>s", ":%s/") --replace all

--[c]ISUAL MODE TRICKS
map("v", "<localleader>cn", ":!nl -w1 -s'. '<CR>")
map("v", "<localleader>cu", ":!uniq<CR>")
map("v", "<localleader>cs", ":!sort<CR>")
map({ "n", "v" }, "<localleader>cd", "<cmd>r!date +'%Y-%m-%d %a %H:%M'<CR>")
-- map("n", "<localleader>cj", "<cmd>%!jq<CR>")

--html pairs
map("n", "<localleader>g", "vi<yf>a</>PT>i")

--open location
map("n", "<leader>z", require("config.wiki"))

-- [c]uickFix
map({ "n" }, "<C-q>", "<cmd>copen<CR>", { silent = true })
map("n", "<M-h>", "<cmd>cnext<CR>")
map("n", "<M-l>", "<cmd>cprev<CR>")

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

-- TERMINAL
map("n", "<leader>:", function()
  vim.cmd.vnew()
  vim.cmd.term()
  vim.cmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 6)
end)
map("t", "<esc><esc>", "<c-\\><c-n>")
