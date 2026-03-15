return {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        overrides = {
            SignColumn = { bg = "#282828" },
            FoldColumn = { bg = "#282828", fg = "#282828" },
            DiagnosticSignError = { bg = "#282828" },
            DiagnosticSignWarn = { bg = "#282828" },
            DiagnosticSignInfo = { bg = "#282828" },
            DiagnosticSignHint = { bg = "#282828" },
            StatusLine = { bg = "#282828" },
            StatusLineNC = { bg = "#282828" },
            NormalFloat = { bg = "#282828" },
            FloatBorder = { bg = "#282828" },
        },
    },
    config = function(_, opts)
        require("gruvbox").setup(opts)
        vim.cmd([[colorscheme gruvbox]])
    end,
}
