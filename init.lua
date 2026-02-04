vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

require("config.lazy")
require("config.keymaps")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.have_nerd_font = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

-- Line wrapping on/off
-- vim.opt.wrap = false         -- wrap line
-- vim.opt.sidescroll = 8       -- scroll step
-- vim.opt.sidescrolloff = 12   -- Minimum columns to keep to the left/right
