return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    require("orgmode").setup({
      org_agenda_files = "~/Documents/Notes/Org/**/*",
      org_default_notes_file = "~/Documents/Notes/Org/refile.org",
      -- org_capture_templates = { { t = { description = 'Task', template = '* TODO %?\n %u' }, n = { description = 'Note', template = '* %?\n %u' } }, },
    })

    -- Experimental LSP support
    vim.lsp.enable("org")
  end,
}
