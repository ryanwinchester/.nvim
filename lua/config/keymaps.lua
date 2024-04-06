-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

--------------------------------------------------------------------------------
-- TABS
--------------------------------------------------------------------------------

-- Undo <Tab> mappings because I want it to be only for indenting.
vim.keymap.set("n", "<Tab>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<Tab>", "<Nop>", { noremap = true, silent = true })
-- vim.keymap.set("c", "<Tab>", "<Nop>", { noremap = true, silent = true })

-- Undo <S-Tab> mappings because I want it to be only for outdenting.
vim.keymap.set("n", "<S-Tab>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("v", "<S-Tab>", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("i", "<S-Tab>", "<Nop>", { noremap = true, silent = true })
-- vim.keymap.set("c", "<S-Tab>", "<Nop>", { noremap = true, silent = true })

-- Indent that is not stupid.
vim.keymap.set("n", "<Tab>", ">>", { desc = "Indent" })
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent" })

-- Outdent that is not stupid.
vim.keymap.set("n", "<S-Tab>", "<<", { desc = "Outdent" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Outdent" })
vim.keymap.set("i", "<S-Tab>", "<C-d>", { desc = "Outdent" })
