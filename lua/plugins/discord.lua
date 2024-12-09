local cwd = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
local is_work = (cwd == "addigence")

return {
  "vyfor/cord.nvim",
  build = "./build || .\\build",
  event = "VeryLazy",
  opts = { -- calls require('cord').setup()
    display = {
      show_time = true, -- Display start timestamp
      show_repository = not is_work, -- Display 'View repository' button linked to repository url, if any
      show_cursor_position = false, -- Display line and column number of cursor's position
      swap_fields = false, -- If enabled, workspace is displayed first
      swap_icons = false, -- If enabled, editor is displayed on the main image
      workspace_blacklist = {}, -- List of workspace names that will hide rich presence
    },
    text = {
      viewing = is_work and "Viewing [redacted]" or "Viewing {}",
      editing = is_work and "Editing [redacted]" or "Editing {}",
      file_browser = is_work and "Browsing [redacted]" or "Browsing files in {}",
      plugin_manager = is_work and "Managing plugins at work" or "Managing plugins in {}",
      lsp_manager = is_work and "Configuring LSP at work" or "Configuring LSP in {}",
      vcs = is_work and "Committing work" or "Committing changes in {}",
      workspace = is_work and "At work" or "In {}",
    },
  },
}
