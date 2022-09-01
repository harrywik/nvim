-- local variables
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- map <Space> as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- for swithching windows
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- toggle file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)
