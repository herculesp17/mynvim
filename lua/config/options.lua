local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.scrolloff = 8
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.clipboard = "unnamedplus"
opt.smartindent = true
opt.autoindent = true
-- opt.termguicolors = true
opt.mouse = "a"
opt.breakindent = true

opt.ignorecase = true
opt.smartcase = true

-- This is for Neorg
opt.conceallevel = 3

-- undo
opt.undofile = true
opt.backup = false

-- autoformat
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- yanking
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})
