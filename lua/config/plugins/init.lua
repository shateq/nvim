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
