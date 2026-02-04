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


-- Format the current buffer on save
-- help from lsp.txt copied over
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("my.lsp", {}),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if not client then return end

    if client:supports_method('textDocument/formatting') then
      -- if vim.bo.filetype == "lua" then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
        end,
      })
    end
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
