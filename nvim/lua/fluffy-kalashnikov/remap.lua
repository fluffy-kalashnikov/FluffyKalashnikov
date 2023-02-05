vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")
--split nav
vim.keymap.set("n", "<A-h>", "<C-w>h")
vim.keymap.set("n", "<A-j>", "<C-w>j")
vim.keymap.set("n", "<A-k>", "<C-w>j")
vim.keymap.set("n", "<A-l>", "<C-w>l")
vim.keymap.set("t", "<A-h>", "<C-\\><C-n><C-w>h")
vim.keymap.set("t", "<A-j>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<A-k>", "<C-\\><C-n><C-w>j")
vim.keymap.set("t", "<A-l>", "<C-\\><C-n><C-w>l")
vim.keymap.set("n", "<A-Right>", ":vertical resize +3<CR>") 
vim.keymap.set("n", "<A-Left>", ":vertical resize -3<CR>")
vim.keymap.set("n", "<A-Up>", ":resize +3<CR>") 
vim.keymap.set("n", "<A-Down>", ":resize -3<CR>")

--terminal toggle
vim.keymap.set("n", "<leader>tt", function()
    vim.cmd("vnew term://bash")
    vim.cmd("set modifiable")
    vim.cmd("startinsert")
end)
vim.keymap.set("t", "<leader>tt", function()
    vim.cmd("exit")
end)

