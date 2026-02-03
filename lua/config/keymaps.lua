--   ___ ___ .__             .__/\             .__                        --
--  /   |   \|__| ________ __|__)/______ ___  _|__| ____________   ____   --
-- /    ~    \  |/  ___/  |  \  |/  ___/ \  \/ /  |/     \_  __ \_/ ___\  --
-- \    Y    /  |\___ \|  |  /  |\___ \   \   /|  |  Y Y  \  | \/\  \___  --
--  \___|_  /|__/____  >____/|__/____  >   \_/ |__|__|_|  /__|    \___  > --
--        \/         \/              \/                 \/            \/  --

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space><Space>", ":wq<CR>", { noremap = true, silent = true })
