return {
  -- Extend the default config, use the code below instead:
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "elixir",
        "erlang",
        "heex",
        "eex",
      })
    end,
  },
}
