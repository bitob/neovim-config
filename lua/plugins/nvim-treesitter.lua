return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
        ensure_installed = {
            arduino,
            bash,
            bibtex,
            bitbake,
            c,
            c_sharp,
            cmake,
            comment,
            commonlisp,
            cpp,
            css,
            csv,
            cuda,
            devicetree,
            diff,
            dockerfile,
            dot,
            doxygen,
            ebnf,
            fish,
            git_config,
            git_rebase,
            gitattributes,
            gitcommit,
            gitignore,
            go,
            graphql,
            haskell_persistent,
            html,
            http,
            ini,
            java,
            javascript,
            jsdoc,
            json,
            kotlin,
            latex,
            llvm,
            lua,
            luadoc,
            markdown_inline,
            matlab,
            nix,
            norg,
            ocaml,
            odin,
            passwd,
            php,
            proto,
            python,
            regex,
            rust,
            scala,
            sql,
            toml,
            typescript,
            verilog,
            vim,
            vimdoc,
            xml,
            yaml,
            zig
        },
        highlight = {
            enable = true,
            -- disable = { "rust" },
-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
            },
      indent = { enable = true },
      ignore_install = { '' },
      auto_install = true,
      matchup = { enable = true, include_match_words = true, enable_quotes = true },
    },
    config = function(_, opts)
      require('nvim-treesitter.configs').setup(opts)
    end,
  },

--  -- nvim-treesitter-context
--  {
--    'nvim-treesitter/nvim-treesitter-context',
--    dependencies = 'nvim-treesitter/nvim-treesitter',
--    event = { 'BufReadPost', 'BufNewFile' },
--    config = true,
--  },
--
--  -- vim-matchup
--  { 'andymass/vim-matchup', dependencies = 'nvim-treesitter/nvim-treesitter', event = { 'BufReadPost', 'BufNewFile' } },
--
--  -- treesj
--  {
--    'Wansmer/treesj',
--    dependencies = 'nvim-treesitter/nvim-treesitter',
--    opts = { max_join_length = 150 },
--    keys = {
--      {
--        '<leader>m',
--        function()
--          return require('treesj').toggle()
--        end,
--        desc = 'Toggle node under cursor',
--      },
--      {
--        '<leader>j',
--        function()
--          return require('treesj').join()
--        end,
--        desc = 'Join node under cursor',
--      },
--      {
--        '<leader>s',
--        function()
--          return require('treesj').split()
--        end,
--        desc = 'Split node under cursor',
--      },
--    },
--  },
--
--  -- indent-blankline.nvim
--  {
--    'lukas-reineke/indent-blankline.nvim',
--    dependencies = 'nvim-treesitter/nvim-treesitter',
--    event = { 'BufReadPost', 'BufNewFile' },
--    opts = {
--      char = '▏',
--      context_char = '▏',
--      use_treesitter = true,
--      show_first_indent_level = true,
--      show_trailing_blankline_indent = false,
--      show_current_context = true,
--      show_current_context_start = true,
--      filetype_exclude = {
--        'help',
--        'dashboard',
--        'Trouble',
--        'neogitstatus',
--        'mason',
--        'toggleterm',
--        'lazy',
--        'neo-tree',
--      },
--    },
--  },
--
--  -- rainbow-delimiters.nvim
--  {
--    'hiphish/rainbow-delimiters.nvim',
--    dependencies = 'nvim-treesitter/nvim-treesitter',
--    event = { 'BufReadPost', 'BufNewFile' },
--  },
}

