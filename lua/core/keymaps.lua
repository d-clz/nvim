-- core/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- =========================
-- General
-- =========================
map("n", "<leader>w", "<cmd>w<CR>", opts)
map("n", "<leader>q", "<cmd>q<CR>", opts)
map("n", "<leader>Q", "<cmd>qa!<CR>", opts)

-- =========================
-- File / Tree
-- =========================
map("n", "<leader>e", "<cmd>Neotree toggle<CR>", opts)

-- =========================
-- Alignment (vim-easy-align)
-- =========================
map({ "n", "x" }, "ga", "<Plug>(EasyAlign)")

-- =========================
-- Writing / Focus mode
-- =========================
map("n", "<leader>z", "<cmd>Goyo<CR>", opts)
map("n", "<leader>l", "<cmd>Limelight!!<CR>", opts)

-- =========================
-- Window navigation (IDE-like)
-- =========================
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- =========================
-- Better defaults
-- =========================
map("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)

