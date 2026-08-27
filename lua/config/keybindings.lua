-- Keybindings Setup
-- Leader
vim.g.mapleader = " "

-- window closing
vim.keymap.set("n", "<leader>q", ":close<CR>")

-- netrw & neo-tree
vim.keymap.set("n", "<leader>cd", ":Vexplore!<CR>")
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>")

-- terminal setup
vim.keymap.set("n", "<leader>t", ":split | terminal<CR>a")

