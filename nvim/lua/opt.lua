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
local indent_size = 4
vim.opt.shiftwidth = indent_size
vim.opt.tabstop = indent_size
vim.opt.softtabstop = indent_size
vim.opt.expandtab = true
vim.opt.smartindent = true

-- indent for ocaml
vim.api.nvim_create_autocmd("FileType", {
    pattern = "ocaml",
    callback = function()
        indent_size = 2
        vim.opt.shiftwidth = indent_size
        vim.opt.tabstop = indent_size
        vim.opt.softtabstop = indent_size
    end,
})

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

