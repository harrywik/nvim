-- local variables
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- map <Space> as leader
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode
-- for swithching windows
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)

-- toggle file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- get LSP info
keymap("n", "<leader>l", "<cmd>LspInfo<cr>", opts)
keymap("n", "<leader>i", "<cmd>LspInstallInfo<cr>", opts)

-- telescope.nvim 
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files()<cr>", opts)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", opts)

-- gitsigns
keymap("n", "<leader>+", "<cmd>Gitsigns blame_line<cr>", opts)

-- visual block mode
-- indentation
keymap("x", "<S-Tab>", "<gv", opts)
keymap("x", "<Tab>", ">gv", opts)

-- move up and down
keymap("x", "J", ":move '>+1<cr>gv-gv", opts)
keymap("x", "K", ":move '<-2<cr>gv-gv", opts)
