return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1
        require("nvim-tree").setup {
            hijack_cursor = true,
            disable_netrw = true,
            view = {
                width = 40,
            }, 
        }
        local api = require("nvim-tree.api")
        vim.keymap.set("n", "<leader>t", api.tree.toggle)
    end,
}

