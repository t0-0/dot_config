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

local plugins = {}

-- Ex.
-- plugins = require("hoge").setup(plugins)

-- git
plugins = require('plugins_git').setup(plugins)

-- which_key.nvim
plugins = require("plugins_which_key").setup(plugins)

-- nvim-autopairs.nvim
plugins = require("plugins_nvim-autopairs").setup(plugins)

-- catpuccin
plugins = require("plugins_colorscheme").setup(plugins)

-- toggleterm
plugins = require("plugins_toggleterm").setup(plugins)

-- complement
plugins = require("plugins_complement").setup(plugins)

-- nvim-lsp
plugins = require("plugins_nvim_lsp").setup(plugins)

-- barbar
plugins = require("plugins_barbar").setup(plugins)

-- neo_tree
plugins = require("plugins_neo_tree").setup(plugins)

-- telescope
plugins = require("plugins_telescope").setup(plugins)

require("lazy").setup(plugins, opts)
