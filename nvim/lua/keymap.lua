-- leader
vim.g.mapleader = " "

-- general options
options = { noremap = true, silent = true }

-- manage windows
vim.keymap.set("n", "<leader>x", ":split<CR>", options)
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", options)
vim.keymap.set("n", "<leader>q", ":q<CR>", options)
vim.keymap.set("n", "<leader>w", ":w<CR>", options)
vim.keymap.set("n", "<leader>n", ":enew<CR>", options)

-- no highlight
vim.keymap.set("n", "<leader><space>", ":noh<CR>", options)

