-- Mouse
vim.opt.mouse = ""

-- Appearence
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.fillchars = {
    eob = " ",
    vert = " ",
}

-- 24-Bit True Colors
vim.opt.termguicolors = true

-- Indent
local indent_size = 4
vim.opt.shiftwidth = indent_size
vim.opt.tabstop = indent_size
vim.opt.softtabstop = indent_size
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
