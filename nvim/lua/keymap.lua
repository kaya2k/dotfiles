-- leader
vim.g.mapleader = ' '

-- general options
options = { noremap = true, silent = true }

-- manage windows
vim.keymap.set('n', '<leader>x', ':split<CR>', options)
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', options)
vim.keymap.set('n', '<leader>q', ':q<CR>', options)
vim.keymap.set('n', '<leader>w', ':w<CR>', options)
vim.keymap.set('n', '<leader>n', ':enew<CR>', options)

-- move through windows
-- vim.keymap.set('n', '<C-j>', '<C-w>j', options)
-- vim.keymap.set('n', '<C-k>', '<C-w>k', options)
-- vim.keymap.set('n', '<C-l>', '<C-w>l', options)
-- vim.keymap.set('n', '<C-h>', '<C-w>h', options)

-- move visual block
vim.keymap.set('x', 'J', [[:m '>+1<CR>gv=gv]], options)
vim.keymap.set('x', 'K', [[:m '<-2<CR>gv=gv]], options)

-- no highlight
vim.keymap.set('n', '<leader><space>', ':noh<CR>', options)

