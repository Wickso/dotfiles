return {
    {
        "igorlfs/nvim-dap-view",
        opts = {},
        config = function()
            require("dap-view").setup({
                winbar = {
                    sections = {
                        "watches", "scopes", "exceptions", "breakpoints", "threads", "repl", "console"
                    },
                    controls = {
                        enabled = true
                    }
                }
            })
        end
    },
    {
        "theHamsta/nvim-dap-virtual-text",
    },
    {
        'mfussenegger/nvim-dap',
        dependencies = {
            "igorlfs/nvim-dap-view"
        },
        config = function()
            require("nvim-dap-virtual-text").setup({
                virt_text_pos = 'inline'
            })
            require("plugins.dap.cppdap")
            require("plugins.dap.pythondap")
            require("plugins.dap.zigdap")
        end
    }
}
