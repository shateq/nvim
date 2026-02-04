return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.lsp.enable("clangd", "tinymist")

    vim.lsp.config["tinymist"] = {
      cmd = { "tinymist" },
      filetypes = { "typst" },
      settings = {
        formatterMode = "typstyle",
      },
    }
  end,
}
