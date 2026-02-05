return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ghq.nvim"
  },
  config = function()
    require "telescope".setup {
      pickers = {
        buffers = {
          theme = "dropdown"
        },
        registers = {
          theme = "dropdown"
        },
      },

      -- Extension
      require("telescope").load_extension "ghq"
    }
  end,
  keys = {
    { "<C-f>",      "<cmd>Telescope find_files<CR>", desc = "List current working directory" },
    { "<leader>ff", "<cmd>Telescope live_grep<CR>",  desc = "Telescope live grep" },
    { "<leader>fr", "<cmd>Telescope registers<CR>",  desc = "Pull registers" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Telescope buffers" },

    { "<leader>fg", "<cmd>Telescope ghq<CR>",        desc = "ghq extension" },
    { "<leader>f?", "<cmd>Telescope keymaps<CR>",    desc = "List keymaps" },
    -- { "<leader>f?", "<cmd>Telescope keymaps<CR>",    desc = "List keymaps" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>",  desc = "Browse help pages" },
    {
      "<leader>en",
      function()
        require "telescope.builtin".find_files { cwd = vim.fn.stdpath("config") }
      end,
      desc = "List current working directory"
    },
    {
      "<leader>fw",
      function()
        local word = vim.fn.expand "<cword>"
        require "telescope.builtin".grep_string { search = word }
      end,
      desc = "Lookup current word-string in cwd",
    },
    {
      "<leader>fW",
      function()
        local word = vim.fn.expand "<cWORD>"
        require "telescope.builtin".grep_string { search = word }
      end,
      desc = "Lookup current WORD-string in cwd",
    },
  },
}
