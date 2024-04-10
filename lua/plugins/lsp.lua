return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes_include = { "heex" },
          init_options = {
            userLanguages = {
              elixir = "html-eex",
              eelixir = "html-eex",
              heex = "html-eex",
            },
          },
        },
        -- NOTE: lexical is not recognizing imported function components from AppWeb.
        -- we'll leave it out until that is fixed...
        -- lexical = {
        --   mason = false,
        --   filetypes = { "elixir", "eelixir", "heex" },
        --   cmd = { vim.fn.expand("~/Code/forks/lexical/_build/dev/package/lexical/bin/start_lexical.sh") },
        --   settings = {},
        -- },
      },
    },
  },

  -- Extend mason config???
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        -- "elixir-ls",
        "nextls",
      })
    end,
  },

  -- Tailwind colorizing autocomplete
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
