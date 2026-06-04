return {
    -- LSP
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
            "WhoIsSethDaniel/mason-tool-installer.nvim"
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "neocmake",
                    "pylsp",
                    "lua_ls",
                    "jsonls",
                    "bashls",
                    "sqlls",
                    "slangd",
                    "ols",
                },
            })
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "codelldb",
                    "debugpy",
                },
                run_on_start = true,
                auto_update = false
            })
        end
    },
    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "L3MON4D3/Luasnip",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
        },
        config = function()
            local cmp = require('cmp')
            local lspkind = require('lspkind')
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                formatting = {
                    format = lspkind.cmp_format(),
                },
                completion = {
                    col_offset = 1,
                    side_padding = 1,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    -- M = ALT
                    ['<M-CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<M-j>'] = cmp.mapping.select_next_item(),
                    ['<M-k>'] = cmp.mapping.select_prev_item()
                }),
                sources = cmp.config.sources({
                    { name = 'luasnip' },
                    { name = 'nvim_lsp' },
                    { name = 'buffer' },
                    { name = 'path' },
                }),
                view = {
                    entries = "native"
                }

            })
        end
    }
}
