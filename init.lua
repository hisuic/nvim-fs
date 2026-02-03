vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

require("config.lazy")
require("config.keymaps")

vim.g.mapleader = " "
vim.g.have_nerd_font = true
vim.opt.termguicolors = true
