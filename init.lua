-- Configuration mainly inspired by https://github.com/milanglacier/nvim.git and https://astronvim.com

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Use Lazy as package manager. It is the state-of-the-art manager at the time starting this config
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

require('lazy_plugins')

require('basic_config')
require('colorscheme')
require('keymaps')

require('plugin_config')
