local o = vim.opt

o.number = true
o.relativenumber = true

o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.expandtab = true

o.smartindent = true

o.wrap = true

vim.cmd("set laststatus=2")
o.cmdheight = 0
-- Lines above/below the cursor
o.scrolloff = 16

o.splitright = true
o.splitbelow = true

-- o.cursorline = true

vim.cmd("set signcolumn=yes:1")

vim.cmd("set title")
