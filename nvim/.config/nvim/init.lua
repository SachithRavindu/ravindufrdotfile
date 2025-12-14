-- Basic settings
vim.opt.number = true           -- Show line numbers
vim.opt.relativenumber = true   -- Relative line numbers
vim.opt.expandtab = true        -- Use spaces instead of tabs
vim.opt.shiftwidth = 4          -- Indent width
vim.opt.tabstop = 4             -- Tab width
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
vim.opt.cursorline = true       -- Highlight current line
vim.opt.termguicolors = true   -- True color support

-- Leader key
vim.g.mapleader = " "

-- Optional: simple key mapping example
vim.api.nvim_set_keymap('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

vim.opt.clipboard = "unnamedplus"
