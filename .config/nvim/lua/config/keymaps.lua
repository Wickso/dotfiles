-- Quality of life
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<leader>vs", function()
    vim.cmd(":vsplit")
    vim.cmd(":wincmd l")
end)
vim.keymap.set("n", "<leader>hs", function()
    vim.cmd(":split")
    vim.cmd(":wincmd j")
end)


-- filesystem
vim.keymap.set('n', '<leader>pv', function()
    if vim.bo.filetype == "netrw" then
        vim.cmd(":Rex")
    else
        vim.cmd(":Ex")
    end
end)




-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- terminal
vim.keymap.set('t', "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set('n', '<leader>t', function() vim.cmd(":ToggleTerm") end)

-- LSP
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references)
vim.keymap.set("n", "<F2>", vim.lsp.buf.rename)
vim.keymap.set("n", "<F3>", vim.lsp.buf.format)
vim.keymap.set("n", "<F4>", vim.lsp.buf.code_action)

-- Markdown preview
vim.keymap.set("n", "<leader>mdp", function()
    vim.cmd(":MarkdownPreview github")
    print("Success - Check internet browser")
end)

-- Git
vim.keymap.set("n", "<leader>gf", function() vim.cmd(":Git diff") end)
vim.keymap.set("n", "<leader>gs", function() vim.cmd("Neotree git_status float") end)

-- Debug
local dap = require("dap")
local dapView = require("dap-view")
vim.keymap.set("n", "<leader>bp", function() dap.toggle_breakpoint() end)
vim.keymap.set("n", "<F10>", function()
    dapView.open()
    dap.continue()
end)
vim.keymap.set("n", "<F11>", function()
    dap.terminate()
    dapView.close()
end)
vim.keymap.set("n", "<F12>", function() dapView.add_expr() end)

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup({})

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>hp", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end)
vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end)
vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end)
