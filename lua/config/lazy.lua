local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup {
    spec = {
        -- { import = "plugins" },
        { import = "plugins.lsp" },
        -- Commenatary
        { import = "plugins.comment" },
        -- colorscheme
        { import = "plugins.colorscheme" },
        -- neo-tree
        { import = "plugins.neo-tree" },
        -- whichkey
        { import = "plugins.whichkey" },
        -- autocompletion
        -- { import = "plugins.autocompletion" },
        -- autopair
        { import = "plugins.autopair" },
    },
    defaults = { lazy = true, version = nil},
    install = { missing = true },
    checker = { enabled = true },
    performance = {
        cache = {
            enabled = true,
        },
    },
}
