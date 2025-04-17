return {
    "mhartington/formatter.nvim",
    lazy = false,
    config = function()
        require("formatter").setup{
            filetype = {
                ocaml = { require("formatter.filetypes.ocaml").ocamlformat },
                c = { require("formatter.filetypes.c").clangformat },
                python = { require("formatter.filetypes.python").black },
            }
        }
        vim.keymap.set("n", "<leader>F", ":Format<CR>", { silent = true })
    end,
}

