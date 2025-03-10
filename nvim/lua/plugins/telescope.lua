return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
        require("telescope").setup{
            defaults = {
                borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
                layout_strategy = "vertical",
                layout_config = {
                    mirror = true,
                    height = 0.7,
                    width = 100,
                    preview_height = 0.6,
                },
                mappings = {
                    i = { ["<esc>"] = require('telescope.actions').close },
                },
            },
        }
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files)
        vim.keymap.set("n", "<leader>l", builtin.live_grep)
        vim.keymap.set("n", "<leader>b", builtin.buffers)
        vim.keymap.set("n", "<leader>h", builtin.help_tags)
    end,
}

