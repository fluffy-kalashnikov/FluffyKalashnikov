require("neo-tree").setup({
    close_if_last_window = true
})

vim.g.neo_tree_remove_legacy_commands = true
vim.keymap.set("n", "<leader>e", function()
    if is_neotree_focused() then
        vim.cmd("Neotree close")
    else
        vim.cmd("Neotree focus")
    end
end)
--TODO: Use nvim_buf_set_keymap to map <esc> to focus window
function is_neotree_focused()
    local active_buf_id = vim.api.nvim_get_current_buf()
    local buf_ids = vim.api.nvim_list_bufs()

    for _, buf_id in ipairs(buf_ids) do 
        local filetype = vim.api.nvim_buf_get_option(buf_id, "filetype")
        if filetype == "neo-tree" and buf_id == active_buf_id then
            return true
        end
    end
    return false
end
