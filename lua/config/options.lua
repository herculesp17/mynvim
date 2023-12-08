local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.tabstop = 4 
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.clipboard = "unnamedplus"
opt.smartindent = true
opt.termguicolors = true

-- yanking

vim.cmd[[
augroup highlight_yank
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=200})
augroup END
]]

-- undo 

opt.undofile = true
opt.backup = false
