return {
    "ibhagwan/fzf-lua",
    opts = {
        winopts = {
            backdrop = 100,
            title_flags = false,
        },
    },
    config = function(_, opts)
        require("fzf-lua").setup(opts)
        vim.keymap.set("n", "<leader>f", "<cmd>FzfLua files<CR>")
        vim.keymap.set("n", "<leader>g", "<cmd>FzfLua live_grep<CR>")
        vim.keymap.set("n", "<leader>R", "<cmd>FzfLua lsp_references<CR>")
        vim.keymap.set("n", "<leader>d", "<cmd>FzfLua lsp_definitions<CR>")
        vim.keymap.set("n", "<leader>D", "<cmd>FzfLua lsp_declarations<CR>")
    end,
}
