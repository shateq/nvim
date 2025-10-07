return {
  "stevearc/conform.nvim",
  branch = "nvim-0.9",
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      bash = { "beautysh" },
      c = { "clang-format" },
      json = { "jq" },
      javascript = { "deno_fmt" },
      markdown = { "deno_fmt" },
      rust = { "rustfmt" },
      css = { "stylelint" },
    },
  },
  keys = {
    {
      "<leader>bl",
      function()
        require("conform").format { async = true }
      end,
      mode = "n",
      desc = "Format buffer",
    },
  },
}
