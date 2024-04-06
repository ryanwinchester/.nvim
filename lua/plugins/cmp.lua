return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = {
      -- Defaults ??
      ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<C-e>"] = cmp.mapping.abort(),
      -- ["<CR>"] = cmp.mapping.confirm({ select = true }),
      ["<S-CR>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      }),
      ["<C-CR>"] = function(fallback)
        cmp.abort()
        fallback()
      end,

      -- The things I want to set.
      -- NOTE: Set `select` to `false` to only confirm explicitly selected items.
      -- TODO: Fix when I press enter after scrolling through items it leaves the
      -- item in place and inserts what I originally typed onto the newline.
      -- The [C-CR] default also suffers from it, too, though.
      ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      ["<CR>"] = function(fallback)
        if cmp.visible() then
          cmp.abort()
          fallback()
        else
          fallback()
        end
      end,
    }
  end,
}
