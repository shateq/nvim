return {
  {
    "echasnovski/mini.nvim",
    enabled = false,
    config = function()
      local statusline = require "mini.statusline"
      statusline.setup { use_icons = true }
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    enabled = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      always_show_tabline = false,
      sections = {
        --lualine_x = {"filetype","encoding"},
        lualine_x = { "searchcount" },
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {
        lualine_b = {
          {
            "tabs",
            mode = 1,
            max_length = vim.o.columns * 0.6,
            section_separators = { left = "", right = "" },
            cond = function()
              return vim.fn.tabpagenr "$" > 1
            end,
          },
        },
        lualine_y = { "filetype", "encoding" },
      },
    },
  },
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
    "jiaoshijie/undotree",
    lazy = true,
    keys = {
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
}
