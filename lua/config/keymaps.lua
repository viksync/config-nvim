-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set
local nomap = vim.keymap.del

-- leader j - join lines
-- J - 5j

-- NvChad insert movements
map("i", "<C-b>", "<ESC>^i", { desc = "Move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move end of line" })
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

-- Remap s back from flash.nvim
map("n", "s", "s")

-- Comments
map("n", "<leader>/", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<leader>/", "gc", { desc = "Toggle comment", remap = true })

-- Live grep from root remapping
-- map("n", "<leader>z", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })

map("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit All" })
map("n", "Y", "<cmd>%y+<CR>", { desc = "Yank whole file" })

-- Black hole deletion
map("n", "dd", '"_dd')
map("n", "D", "dd")
map("n", "x", '"_x')

-- Fast write file
-- map("i", "<C-c><C-c>", "<ESC>:w<CR>", { desc = "Exit INSERT and write" })
map("i", "<C-x>", "<ESC>:w<CR>:qa!<CR>", { desc = "Save and Exit" })

-- Save with Cmd+S (Mac)
vim.keymap.set("n", "<D-s>", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("i", "<D-s>", "<esc><cmd>w<cr>a", { desc = "Save file" })
