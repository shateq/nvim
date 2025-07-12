--[[  KEYMAP  --]]
-- leader semantics:
-- t (toggle) p (project) l (lsp)
local function map(m, k, v)
  vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

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

-- tabs
map("n", "<leader><C-t>", ":tabnew<CR>")
map("n", "<leader><S-h>", ":tabprevious<CR>")
map("n", "<leader><S-l>", ":tabnext<CR>")

map("n", "<leader>h", ":noh<CR>")
map("n", "<leader>pv", "<cmd>Oil<CR>", { desc = "Open parent directory" })
--map("n", "<leader>pv", vim.cmd.Ex)
map("n", "<leader>%", "<cmd>source %<CR>") -- execute current file
map("n", "<leader>s", ":%s//g<Left><Left>") --replace all
map("n", "<leader>d", ":w ") --duplicate to new name
map("n", "<leader>x", "<cmd>!chmod +x %<CR>") --make a file executable

-- CTRL+<hjkl> to focus windows instead of win mode
map("n", "<C-h>", "<C-w><C-h>")
map("n", "<C-l>", "<C-w><C-l>")
map("n", "<C-j>", "<C-w><C-j>")
map("n", "<C-k>", "<C-w><C-k>")

map("n", "<F5>", ":resize +2<CR>")
map("n", "<F6>", ":resize -2<CR>")
map("n", "<F7>", ":vertical resize +2<CR>")
map("n", "<F8>", ":vertical resize -2<CR>")
