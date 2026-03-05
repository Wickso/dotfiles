return {
    --{
    --    "nvimdev/indentmini.nvim",
    --    config = function()
    --        require("indentmini").setup()
    --    end
    --},
    {
        'nvim-mini/mini.indentscope',
        version = '*',
        config = function()
            require("mini.indentscope").setup({
                delay = 30,
                animation = require("mini.indentscope").gen_animation.exponential({
                    easing = "in",
                })
            })
        end
    },
}
