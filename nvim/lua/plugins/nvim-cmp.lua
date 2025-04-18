return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
    },
    lazy = false,
    config = function ()
        local cmp = require("cmp")
        cmp.setup{
            mapping = cmp.mapping.preset.insert{
                ["<C-k>"] = cmp.mapping.scroll_docs(-4),
                ["<C-j>"] = cmp.mapping.scroll_docs(4),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-e>"] = cmp.mapping.abort(),
                ["<CR>"] = cmp.mapping.confirm({ select = false }),
            },
            sources = cmp.config.sources{
                { name = "nvim_lsp" },
                { name = "buffer" },
            }
        }
        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            }
        })
        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources{
                { name = "path" }
            }, {
                { name = "cmdline" },
            }
        })
    end,
}

