-- Python
vim.lsp.config("pyright", {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
})
vim.lsp.enable("pyright")

-- LaTeX
vim.lsp.config("texlab", {
    cmd = { "texlab" },
    filetypes = { "tex", "bib" },
})
vim.lsp.enable("texlab")
