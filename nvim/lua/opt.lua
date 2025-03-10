-- disable mouse
vim.opt.mouse = ''

-- appearences
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.fillchars = {
    vert = ' ',
    eob = ' ',
  }

-- indent
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- searching
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- colors
vim.opt.termguicolors = true
vim.opt.background = 'light'

