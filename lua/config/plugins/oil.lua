return {
  {
    "stevearc/oil.nvim",
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
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
  {
    "serenevoid/kiwi.nvim",
    lazy = true,
    -- ft = { "markdown" },
    opts = {
      {
        name = "cloud",
        path = "Documents/Nextcloud/Notes",
      },
      {
        name = "local",
        path = vim.fn.expand "$HOME/Documents/Notes",
      },
    },
    keys = {
      { "<leader>ww", ':lua require("kiwi").open_wiki_index()<CR>',        desc = "Open Wiki index" },
      { "<leader>wl", ':lua require("kiwi").open_wiki_index("local")<CR>', desc = "Open Wiki index" },
      { "<leader>wT", ':lua require("kiwi").todo.toggle()<CR>',            desc = "Toggle Markdown Task" },
    },
  },
}
