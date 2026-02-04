return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
  },
  config = function()
    -- local capabilities = require('blink.cmp').get_lsp_capabilities()

    vim.lsp.config["tinymist"] = {
      cmd = { "tinymist" },
      filetypes = { "typst" },
      settings = {
        formatterMode = "typstyle",
      },
    }

    vim.lsp.enable "lua_ls"
    vim.lsp.enable("clangd", "tinymist")
  end,
}

-- formatters_by_ft = {
--   bash = { "beautysh" },
--   c = { "clang-format" },
--   json = { "jq" },
--   javascript = { "deno_fmt" },
--   markdown = { "deno_fmt" },
--   rust = { "rustfmt" },
