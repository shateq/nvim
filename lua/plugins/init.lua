return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup {
        style = "darker",
      }
      require("onedark").load()
    end,
  },
  {
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
  },
}
