vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", function()
    local active_buf_id = vim.api.nvim_get_current_buf()
    local neotree_focused = false

    for _, buf_id in ipairs(vim.api.nvim_list_bufs()) do 
        local filetype = vim.api.nvim_buf_get_option(buf_id, "filetype")
        if filetype == "neo-tree" then
            neotree_focused = (buf_id == active_buf_id)
            break
        end
    end
    if neotree_focused then
        vim.cmd("Neotree close")
    else
        vim.cmd("Neotree focus")
    end
end)
