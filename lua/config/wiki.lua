return function()
  -- path without ~ will be relative
  local LOC = {
    "~/Documents/Notes/WAT/",
    "~/Documents/WAT-LABY/",
    "~/Documents/Nextcloud/Notes/"
  }

  vim.ui.select(LOC, {
    prompt = "Open location:",
  }, function(choice)
    if choice then
      vim.cmd("edit " .. choice)
    end
  end)
end
