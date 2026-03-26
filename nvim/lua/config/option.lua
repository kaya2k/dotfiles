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
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.shiftwidth = indent_size
        vim.opt_local.tabstop = indent_size
        vim.opt_local.softtabstop = indent_size
    end,
})

-- Search
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clipboard
vim.g.clipboard = {
    name = "OSC 52",
    copy = {
        ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
        ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
        ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
        ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
}
