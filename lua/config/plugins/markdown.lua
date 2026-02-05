return {
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
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    ft = { "markdown" },
    opts = {},
  },
}
