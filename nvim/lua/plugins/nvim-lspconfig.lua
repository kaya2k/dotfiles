return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        -- require("lspconfig")["pyright"].setup{}
        require'lspconfig'.clangd.setup{}
        require"lspconfig".ocamllsp.setup{
            filetypes = { "ml", "ocaml", "menhir", "ocamlinterface", "ocamllex", "reason", "dune" },
        }
        vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
        vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition)
        vim.keymap.set("n", "<leader>D", vim.lsp.buf.declaration)
        vim.keymap.set("n", "<leader>i", vim.lsp.buf.implementation)
        vim.keymap.set("n", "<leader>R", vim.lsp.buf.references)
        vim.keymap.set("n", "<leader>H", vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, options)
        vim.diagnostic.config{
            virtual_text = false,
            float = {
                header = false,
                border = "single",
            },
        }
    end,
}

