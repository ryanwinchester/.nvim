return {
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      flavour = "macchiato",
      -- HOW DO I DISABLE ITALICS?!
      no_italic = true,
      -- no_bold = false,
      custom_highlights = function(colors)
        return {
          -- TreesitterContext = { bg = colors.mantle },
          -- TreesitterContextLineNumber = { bg = colors.mantle },
          -- TreesitterContextBottom = { style = { "underline" } },
          MultiCursor = { bg = colors.red },
          VM_Cursor = { bg = colors.red },
        }
      end,
      integrations = {
        aerial = true,
        alpha = true,
        bufferline = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },

  -- Configure LazyVim to load the colorscheme...
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
