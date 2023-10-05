local plugin_list = {
    -- The Plugin Manager
    { 'folke/lazy.nvim' },

    -- Colorschemes
    { 'ellisonleao/gruvbox.nvim' },
    { 'sainnhe/gruvbox-material' },

    -- UI
    -- Statusline
    -- { 'rebelot/heirline.nvim' },
    { 'nvim-lualine/lualine.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons'
        },
    },
    -- Display all the diagnostic stuff
    { 'folke/trouble.nvim',
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        }
    },
    -- Help Menu for showing Keymaps
    { 'folke/which-key.nvim' },
    -- File Tree
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',
        },
    },

    -- Editing / Motions
    -- Toogle Comments
    { 'numToStr/Comment.nvim' },
    -- Show colors like #AABBCC
    { 'norcalli/nvim-colorizer.lua' },
    -- Color Pairs of Delimiters
    { 'HiPhish/rainbow-delimiters.nvim' },

    -- Utils
    -- Create custom functions
    { 'nvim-lua/plenary.nvim' },
    -- Highlight TODO, FIXME, HACK etc and make them searchable
    -- TODO: This plugin seem to not work at all
    { 
	'folke/todo-comments.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },
    -- Make Splits more intuitive (can also integrate in some terminals)
    {
	'mrjones2014/smart-splits.nvim',
	--build = './kitty/install-kittens.bash',
    },

    -- Treesitter
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        dependencies = {
            { 'nvim-treesitter/nvim-treesitter-textobjects' },
            { 'mfussenegger/nvim-treehopper' },
            { 'mizlan/iswap.nvim' },
            { 'romgrk/nvim-treesitter-context' },
            { 'cshuaimin/ssr.nvim' },
        },
    },

    -- Fuzzyfinder
    -- THE Fuzzy Finder for NeoVim
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
    },
    -- set vim.ui.select to telescope
    { 'nvim-telescope/telescope-ui-select.nvim' },

    -- Language Server Stuff
    -- Installer for LSP, DAP, Linter and Formatters
    { 'williamboman/mason.nvim' },
}

require('lazy').setup(plugin_list, {
    -- Default Options for now
})
