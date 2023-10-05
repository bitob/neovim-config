local o = vim.opt

o.fileencoding = "utf-8"
o.termguicolors = true

o.swapfile = false
o.undofile = true

o.ignorecase = true
o.smartcase = true

--vim.cmd("set wrap smoothscroll")

vim.cmd([[set clipboard+=unnamedplus]])
vim.cmd([[au BufEnter * :set formatoptions-=cro]])
--vim.cmd([[set nohlsearch]])

--set foldmethod=expr
--set foldexpr=nvim_treesitter#foldexpr()
--set nofoldenable                     " Disable folding at startup.
