-- Leader Key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General Keymap Options
local options = { noremap = true }

-- Manage Windows
vim.keymap.set("n", "<leader>x", ":split<CR>", options)
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", options)
vim.keymap.set("n", "<leader>q", ":q<CR>", options)
vim.keymap.set("n", "<leader>w", ":w<CR>", options)
vim.keymap.set("n", "<leader>n", ":enew<CR>", options)

-- Remove Search Highlights
vim.keymap.set("n", "<leader><space>", ":noh<CR>", options)

-- LSP Keymaps
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, options)
vim.keymap.set("n", "<leader>H", vim.lsp.buf.hover, options)
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, options)

-- Copy and Paste
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], options)
vim.keymap.set("n", "<leader>Y", [["+Y]], options)
vim.keymap.set({ "n", "v" }, "<leader>p", [["+p]], options)
vim.keymap.set("n", "<leader>P", [["+P]], options)
