
--Classic vim setting
--Keymaps
vim.g.mapleader = " "
vim.g.maplocalleader = ","
--Set Tabs
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
--Cursor
vim.cmd("set number relativenumber")
--sets the current number absolutely
vim.cmd("set nu rnu")
vim.cmd("set numberwidth=4")
vim.cmd("set scrolloff=7")

vim.cmd("map <C-l> <C-w>l")
vim.cmd("map <C-k> <C-w>k")
vim.cmd("map <C-j> <C-w>j")
vim.cmd("map <C-h> <C-w>h")

