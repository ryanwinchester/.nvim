return {
  "nvim-treesitter/nvim-treesitter-context",
  event = "LazyFile",
  enabled = true,
  config = function()
    -- Remove ugly stupid underline in the context thing.
    -- We hate it so very much. Also, this only took like an
    -- hour to figure out, with the help of 179 people.
    vim.api.nvim_set_hl(0, "TreesitterContextBottom", { gui = nil })
  end,
  opts = {
    mode = "cursor",
    max_lines = 3,
  },
  keys = {
    {
      "<leader>ut",
      function()
        local tsc = require("treesitter-context")
        tsc.toggle()
        if LazyVim.inject.get_upvalue(tsc.toggle, "enabled") then
          LazyVim.info("Enabled Treesitter Context", { title = "Option" })
        else
          LazyVim.warn("Disabled Treesitter Context", { title = "Option" })
        end
      end,
      desc = "Toggle Treesitter Context",
    },
  },
}
