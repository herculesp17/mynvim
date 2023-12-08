local function map(mode, lhs, rhs, opts) local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ' '
vim.g.maplocalleader = ","

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Toggle Comment with Leader / in visual and normal mode
map("v", "<leader>/" , "<cmd>normal gcc<CR>", {desc = "Toggle Comment"})
map("n", "<leader>/" , "<cmd>normal gcc<CR>", {desc = "Toggle Comment"})

-- Switch between Tabs
map("n", "<tab>" , ":tabNext <CR>")
map("n", "<leader>c", "<cmd>tabclose<CR>" , {desc = "Close Tab"})
map("n", "<leader>t", "<cmd>tabedit<CR>" , {desc = "New Tab"})

-- Resize Windows

-- Redo
map("n", "<C-y>", "<C-r>", {desc = "Undo"})
