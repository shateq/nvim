return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "saghen/blink.cmp",
  },
  config = function()
    vim.lsp.config["tinymist"] = {
      cmd = {
        -- TODO: move to dedicated typst plugin file
        -- typst preview downloaded path
        vim.fn.expand("$XDG_DATA_HOME/nvim/typst-preview/tinymist*")
      },
    }

    vim.lsp.config["lua_ls"] = {
      settings = {
        Lua = {
          workspace = {
            library = vim.api.nvim_get_runtime_file('', true),
          },
        },
      },
    }

    -- capabilities
    vim.lsp.config("*", {
      capabilities = require('blink.cmp').get_lsp_capabilities(),
    })

    vim.lsp.enable "lua_ls"
    vim.lsp.enable "tinymist"
    vim.lsp.enable "clangd"
    -- vim.lsp.enable "hls"
  end,
}
