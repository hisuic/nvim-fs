--   ___ ___ .__             .__/\             .__                        --
--  /   |   \|__| ________ __|__)/______ ___  _|__| ____________   ____   --
-- /    ~    \  |/  ___/  |  \  |/  ___/ \  \/ /  |/     \_  __ \_/ ___\  --
-- \    Y    /  |\___ \|  |  /  |\___ \   \   /|  |  Y Y  \  | \/\  \___  --
--  \___|_  /|__/____  >____/|__/____  >   \_/ |__|__|_|  /__|    \___  > --
--        \/         \/              \/                 \/            \/  --

-- keymaps
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space><Space>", ":wq<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ll", "<cmd>Lazy<cr>", { desc = "Open Lazy" })

-- Plugin Keymaps

-- oil.nvim
vim.keymap.set("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open oil.nvim" })

-- Telescope Nvim
vim.keymap.set('n', '<leader>ff', require('telescope.builtin').find_files)
vim.keymap.set('n', '<leader>fg', require('telescope.builtin').live_grep)
vim.keymap.set('n', '<leader>fb', require('telescope.builtin').buffers)
vim.keymap.set('n', '<leader>fh', require('telescope.builtin').help_tags)
