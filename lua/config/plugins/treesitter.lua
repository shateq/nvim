return {
  "nvim-treesitter/nvim-treesitter",
  --lazy = true,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "astro",
        "bash",
        "c",
        "haskell",
        "java",
        "lua",
        "markdown",
        "python",
        "rust",
        "typst",
        "vimdoc",
      },
      auto_install = false,
      indent = {
        enable = true,
      },
      highlight = {
        -- 'false' disables extension
        enable = true,
        -- deal with big file
        disable = function(lang, buf)
          local max_filesize = 100 * 1024 -- 100 KB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
        additional_vim_regex_highlighting = false,
      },
    }
  end,
}
