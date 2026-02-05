return {
  {
    -- provides tinymist
    "chomosuke/typst-preview.nvim",
    ft = "typst",
    version = "*",
    opts = {},
    keys = {
      { "<leader>tpt", ":TypstPreviewToggle", desc = "Toggle typst file preview" },
    },
  },
}
