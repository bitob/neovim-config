-- Gruvbox gives some extras light highlights on TODO etc
require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = false, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

vim.o.background = "dark"

-- TODO What do all these options mean?
vim.cmd("colorscheme gruvbox")
-- vim.cmd([[
--     colorscheme gruvbox
--     hi Normal guibg=NONE
--     hi NormalFloat guibg=NONE
--     hi SignColumn guibg=NONE
--     hi FloatBorder guibg=NONE guifg=#b8b8b8
--     hi Cursorline guibg=#0f0f0f
--     hi VertSplit guifg=#0f0f0f guibg=NONE
--     
--     set laststatus=0
--     hi StatusLine guifg=#1a1a1a guibg=NONE
--     hi StatusLineNC guifg=#1a1a1a  guibg=NONE
--     set statusline=%{repeat('─',winwidth('.'))}
--     
--     " hi LineNr guifg=#f38019
--     hi LineNr guifg=#4e4136
--     hi LineNrAbove guifg=#4e4136
--     hi LineNrBelow guifg=#4e4136
-- ]])

--vim.cmd("colorscheme gruvbox-material")
