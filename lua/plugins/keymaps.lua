local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<Tab>", ":tabn<CR>", opts)
keymap("n", "<leader-Tab>", ":tabp<CR>", opts)
keymap("n", "<leader>e", ":Vexplore<CR>", opts)
keymap("n", "<S-t>", ":bd<CR>", opts)
keymap("n", "<C-s>", ":w<CR>", opts)
keymap("n", "<C-S-s>", ":wa<CR>", opts)
keymap('n', '<leader>h', [[<c-w>h]], opts)
keymap('n', '<leader>l', [[<c-w>l]], opts)
keymap('n', '<leader>j', [[<c-w>j]], opts)
keymap('n', '<leader>k', [[<c-w>k]], opts)

-- Autosave --
keymap("i", "<Esc>", "<Esc>:w<CR>", opts)
keymap("n", "<leader>q", "<Esc>:q!<CR>", opts)

-- Telescope
keymap("n", "<C-f>", ":Telescope find_files<CR>", opts)

-- ToggleTerm
keymap("n", "<C-t>", ":ToggleTerm direction=tab<CR>", opts)
keymap("n", "<C-y>", ":2ToggleTerm direction=tab<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "p", '"_dP', opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Copy to clipboard
keymap("v", "<leader-y>", "+y",opts)
keymap("v", "<leader-Y>", "+yg",opts)
keymap("v", "<leader-y>", "+yy",opts)
keymap("v", "<leader -y>", "+y",opts)

-- Paste from clipboard
keymap("v", "<leader-y>", "+p",opts)
keymap("v", "<leader-y>", "+P",opts)


-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
keymap('t', '<esc>', [[<C-\><C-n>]], opts)
-- keymap('t', '<Tab>', [[<C-\><C-n>:tabn<CR>]], opts)
keymap('t', 'jk', [[<C-\><C-n>]], opts)
keymap('t', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
keymap('t', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
keymap('t', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
keymap('t', '<C-l>', [[<C-\><C-n><C-W>l]], opts)

--  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
--  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
--  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
--  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
--  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
--  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)

