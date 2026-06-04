vim.g.mapleader = " "
vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50

vim.opt.pumheight = 10
vim.opt.completeopt = {"menu", "menuone", "noselect"}

vim.cmd(":set termguicolors")

-- virtual text
vim.diagnostic.config({
    virtual_text = {
        prefix = "●", -- Customize the prefix for virtual text
        spacing = 4, -- Space between code and virtual text
        -- Optionally format the message
        format = function(diagnostic)
            return string.format("%s", diagnostic.message)
        end,
    },
    signs = true,             -- Show signs in the gutter
    underline = true,         -- Underline problematic code
    update_in_insert = false, -- Don't update diagnostics while typing
    severity_sort = true,     -- Sort by severity (errors first)
})

-- Inlay
vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        if client.server_capabilities.inlayHintProvider then
            vim.lsp.inlay_hint.enable()
        end
    end
})

-- doxygen
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        local ft = vim.bo.filetype
        if (ft == "cpp") or (ft == "h") or (ft == "hpp") then
            vim.cmd("set syntax=cpp.doxygen")
        elseif ft == "c" then
            vim.cmd("set syntax=c.doxygen")
        end
    end

})

-- netrw

vim.g.netrw_banner = false
vim.g.netrw_liststyle = 0
vim.g.netrw_altv = true
vim.g.netrw_winsize = 85
