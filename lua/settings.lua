local option = vim.opt
local key_mapper = require("core.keymap")

-- Set leader key
vim.g.mapleader = ' '

-- Set theme
vim.g.tokyonight_style = "night"
-- vim.o.background = "light"
vim.g.tokyonight_transparent = true 

-- vim.g.material_style = 'darker'

option.termguicolors = true
option.syntax = 'on'
option.hidden = true
option.tabstop = 2
option.softtabstop = 2
option.shiftwidth = 2
option.expandtab = true
option.number = true
option.relativenumber = true
option.wrap = false
option.clipboard = "unnamedplus"

-- nvim-compe
vim.o.completeopt = "menuone,noselect"

-- Disable arrow keys 
key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('i', 'jk', '<ESC>')
key_mapper('i', 'JK', '<ESC>')
key_mapper('i', 'jK', '<ESC>')
key_mapper('v', 'jk', '<ESC>')
key_mapper('v', 'JK', '<ESC>')
key_mapper('v', 'jK', '<ESC>')
