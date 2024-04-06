-- A way to disable plugins that are included by default in lazyvim.
return {
  -- For example:
  -- { "windwp/nvim-spectre", enabled = false },
  { "indent-blankline.nvim", enabled = false },

  -- THis one is actually useful but I want to be able to make the indent line
  -- have an opacity or change the color.
  { "mini.indentscope", enabled = false },

  -- Autoclosing quotes and brackets is annoying af.
  { "echasnovski/mini.pairs", enabled = false },

  -- Removes the stupid search thing...
  { "folke/flash.nvim", enabled = false },

  -- Remove the tabs
  -- { "akinsho/bufferline.nvim", enabled = false },
}
