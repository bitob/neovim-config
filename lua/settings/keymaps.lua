-- ********** Mappings not showing in Which Key

-- NORMAL MODE

vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", {expr = true, desc = "Move Cursor down one visual line"})
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", {expr = true, desc = "Move Cursor up one visual line"})

vim.keymap.set("n", "d", "_d", {desc = "Delete, use visual and x for cut"})

vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
-- swapping buffers between windows
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

-- VISUAL MODE

vim.keymap.set("v", "d", "_d", {desc = "Delete, use visual and x for cut"})
vim.keymap.set("v", "p", "_dP", {desc = "Replace selected text with default register without yanking"})

-- TODO: What is this?
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- ********** Which Key Mappings

local wk = require("which-key")

-- NORMAL MODE

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
    ["h"] = { "<cmd>nohlsearch<CR>", "Clear Search Highlight" },
    ["o"] = { "<cmd>Neotree<CR>", "Open or switch to FileTree" },
    ["/"] = { "<cmd>lua require('Comment.api').toggle.linewise.count(1)<CR>", "Toggle Comment for Line" },
    f = {
        name = "Find Files",
        f = { "<cmd>Telescope find_files<CR>", "Find Files" },
        g = { "<cmd>Telescope live_grep<CR>", "Live Grep" },
        b = { "<cmd>Telescope buffers<CR>", "Find Buffers" },
        h = { "<cmd>Telescope help_tags<CR>", "Help Tags" },
        w = { "<cmd>Telescope grep_string<CR>", "Search current Word" },
    },
}

wk.register(mappings, opts)


-- VISUAL MODE

local opts = {
  mode = "v", -- VISUAL mode
  prefix = "<leader>",
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {
    ["/"] = { "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "Toggle Comment for Selection" },
}

wk.register(mappings, opts)
