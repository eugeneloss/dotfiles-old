vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.cmd("set relativenumber")

local nnoremap = require("user.keymap_utils").nnoremap

local M = {}

nnoremap("L","$")
nnoremap("H","^")

return M

