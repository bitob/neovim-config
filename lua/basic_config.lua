local o = vim.opt

o.fileencoding = "utf-8"
o.termguicolors = true

o.swapfile = false
o.undofile = true

o.number = true
o.relativenumber = true

-- Lines above/below the cursor
o.scrolloff = 16

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.wrap = true

vim.cmd("set laststatus=0")
o.cmdheight = 0

o.splitright = true
o.splitbelow = true

o.cursorline = true

vim.cmd("set signcolumn=yes:1")

vim.cmd("set title")

o.ignorecase = true
o.smartcase = true

vim.cmd('set clipboard+=unnamedplus')

