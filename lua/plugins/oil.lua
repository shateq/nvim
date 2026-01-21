return {
  {
    "jiaoshijie/undotree",
    keys = {
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
      },
    },
    keys = {
      { "<leader>;", "<cmd>Oil<CR>", desc = "Open parent directory" },
    },
  },
}
