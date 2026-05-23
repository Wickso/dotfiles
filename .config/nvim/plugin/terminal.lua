local state = {
    floating = {
        buf = -1,
        win = -1,
    }
}

local function create_floating_window(opts)
    opts = opts or {}
    local width = opts.width or math.floor(vim.o.columns * 0.7)
    local height = opts.height or math.floor(vim.o.lines * 0.7)

    -- Calculate pos to center window
    local col = 0 + (vim.o.columns - width)/2
    local row = 0 + (vim.o.lines - height)/6

    -- Create buffer
    local buf = nil
    if vim.api.nvim_buf_is_valid(opts.buf) then
        buf = opts.buf
    else
        buf = vim.api.nvim_create_buf(false, true)
    end

    -- window config
    local win_config = {
        relative = "editor",
        width = width,
        height = height,
        col = col,
        row = row,
        style = "minimal",
        border = "bold"
    }

    local win = vim.api.nvim_open_win(buf, true, win_config)

    return { buf = buf, win = win }
end

vim.api.nvim_create_user_command("ToggleTerm", function()
    if not vim.api.nvim_win_is_valid(state.floating.win) then
        state.floating = create_floating_window { buf = state.floating.buf }
        if vim.bo[state.floating.buf].buftype ~= "terminal" then
            vim.cmd.terminal()
            vim.cmd("doautocmd ColorScheme")
        end
    else
        vim.api.nvim_win_hide(state.floating.win)
    end
end, {})
