return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "black" },
            typescript = { "prettier" },
            javascript = { "prettier" },
            c = { "clang_format" },
            cpp = { "clang_format" },
            tex = { "latexindent" },
        },
        formatters = {
            stylua = {
                args = { "--indent-type", "Spaces", "--indent-width", "4", "-" },
            },
        },
    },
    config = function(_, opts)
        local conform = require("conform")
        conform.setup(opts)
        vim.keymap.set("n", "<leader>F", conform.format)
    end,
}
