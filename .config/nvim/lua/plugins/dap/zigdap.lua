local dap = require('dap')
dap.adapters.codelldb = {
    type = 'executable',
    command = 'codelldb',
}

dap.configurations.zig = {
    {
        name = "Launch",
        type = "codelldb",
        request = 'launch',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
    },
}
