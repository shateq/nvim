vim.api.nvim_create_augroup("bufcheck", { clear = true })
vim.api.nvim_create_augroup("custom-term", { clear = true })

-- highlight text on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "bufcheck",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { timeout = 300 }
  end,
})

-- disable automatic comment on newline
vim.api.nvim_create_autocmd("FileType", {
  group = "bufcheck",
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove { "c", "o" }
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = "bufcheck",
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})

-- Set local settings for terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
  group = "custom-term",
  callback = function()
    vim.opt.number = false
    vim.opt.relativenumber = false
    vim.opt.scrolloff = 0

    --vim.bo.filetype = "terminal"
  end,
})
