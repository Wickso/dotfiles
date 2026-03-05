return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            require("nvim-treesitter.install").update({ with_sync = true })()
        end,
    },
    {
        "nvim-treesitter/playground",
        config = function()
            require("nvim-treesitter.configs").setup {
                playground = {
                    enable = true,
                    updatetime = 25,     -- ms
                    persist_queries = false,
                }
            }
        end
    }
}
