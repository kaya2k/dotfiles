return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
        require("lualine").setup{
            options = {
                icons_enabled = false,
                disabled_filetypes = { "packer", "NvimTree" },
                section_separators = "",
                component_separators = "",
            },
            sections = {
                lualine_b = { "branch" },
                lualine_x = { "diff", "diagnostics" },
            },
            inactive_sections = {
                lualine_x = {},
            },
        }
    end,
}

