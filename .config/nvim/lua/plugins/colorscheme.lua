return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("tokyonight").setup({
            transparent = true,
        })
        vim.cmd("colorscheme tokyonight-moon")
    end
}
--return {
--    "catppuccin/nvim",
--    name = "catppuccin",
--    priority = 1000,
--    config = function()
--        vim.cmd("colorscheme catppuccin-macchiato")
--    end
--}





--return {
--    "neanias/everforest-nvim",
--    version = false,
--    lazy = false,
--    priority = 1000, -- make sure to load this before all the other start plugins
--    -- Optional; default configuration will be used if setup isn't called.
--    config = function()
--        local everforest = require("everforest")
--        everforest.setup({
--            background = "hard",
--            transparent_background_level = 1,
--            italics = true,
--            disable_italic_comments = false,
--            inlay_hints_background = "dimmed",
--        })
--        everforest.load();
--    end,
--}






--return {
--    "rose-pine/neovim",
--    name = "rose-pine",
--    config = function()
--        require("rose-pine").setup({
--            variant = "auto",      -- auto, main, moon, or dawn
--            dark_variant = "main", -- main, moon, or dawn
--            dim_inactive_windows = false,
--            extend_background_behind_borders = true,
--
--            enable = {
--                terminal = true,
--                legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--                migrations = true,        -- Handle deprecated options automatically
--            },
--
--            styles = {
--                bold = true,
--                italic = true,
--                transparency = true,
--            },
--
--            groups = {
--                border = "muted",
--                link = "iris",
--                panel = "surface",
--
--                error = "love",
--                hint = "iris",
--                info = "foam",
--                note = "pine",
--                todo = "rose",
--                warn = "gold",
--
--                git_add = "foam",
--                git_change = "rose",
--                git_delete = "love",
--                git_dirty = "rose",
--                git_ignore = "muted",
--                git_merge = "iris",
--                git_rename = "pine",
--                git_stage = "iris",
--                git_text = "rose",
--                git_untracked = "subtle",
--
--                h1 = "iris",
--                h2 = "foam",
--                h3 = "rose",
--                h4 = "gold",
--                h5 = "pine",
--                h6 = "foam",
--            },
--
--            palette = {
--                -- Override the builtin palette per variant
--                -- moon = {
--                --     base = '#18191a',
--                --     overlay = '#363738',
--                -- },
--            },
--
--            -- NOTE: Highlight groups are extended (merged) by default. Disable this
--            -- per group via `inherit = false`
--            highlight_groups = {
--                -- Comment = { fg = "foam" },
--                -- StatusLine = { fg = "love", bg = "love", blend = 15 },
--                -- VertSplit = { fg = "muted", bg = "muted" },
--                -- Visual = { fg = "base", bg = "text", inherit = false },
--            },
--
--            before_highlight = function(group, highlight, palette)
--                -- Disable all undercurls
--                -- if highlight.undercurl then
--                --     highlight.undercurl = false
--                -- end
--                --
--                -- Change palette colour
--                -- if highlight.fg == palette.pine then
--                --     highlight.fg = palette.foam
--                -- end
--            end,
--        })
--
--        vim.cmd("colorscheme rose-pine-moon")
--
--        -- indent lines
--        vim.cmd.highlight('IndentLine guifg=#31353f')
--        vim.cmd.highlight('IndentLineCurrent guifg=#4a5260')
--
--        -- doxygen
--        vim.cmd [[
--            syntax match doxygenTag "@\\w\\+" containedin=cComment
--            syntax match doxygenParam "@param\\s\\+\\zs\\w\\+" containedin=cComment
--
--            highlight default link doxygenTag Keyword
--            highlight default link doxygenParam Identifier
--        ]]
--    end
--}
