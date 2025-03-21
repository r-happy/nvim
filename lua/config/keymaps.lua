-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
keymap.set("n", "<C-f>", ":Telescope find_files<Return>")
keymap.set("n", "<C-b>n", ":BufferLineCycleNext<Return>")
keymap.set("n", "<C-b>p", ":BufferLineCyclePrev<Return>")
keymap.set("n", "<C-b>d", ":BufferLineCloseOthers<Return>")
keymap.set("n", "<gd>", "<cmd>Telescope lsp_definitions<CR>", { noremap = true, silent = true })
keymap.set("n", "T", "<cmd>Neotree toggle<CR>")
keymap.set("n", "<C-n>", "*", { noremap = true, silent = true })
