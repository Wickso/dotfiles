-- ZIG
vim.lsp.config['zls'] = {
    cmd = { "zls" },
    filetypes = {"zig"},
    root_markers = {"build.zig", ".git"},
}

vim.lsp.enable('zls')

-- C++
vim.lsp.config['clangd'] = {
    cmd = {
        "clangd",
    },
    filetypes = {"c", "cpp", "hpp", "h"},
    root_markers = {".git", ".clang-format", ".clangd", "CMakeLists.txt", "compile_commands.json"},
}

vim.lsp.enable('clangd')
