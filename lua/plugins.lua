-- Plugins

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    -- Color schemes
    use 'morhetz/gruvbox'
    use 'navarasu/onedark.nvim'
    use 'sainnhe/vim-color-forest-night'

    -- Plugins
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'majutsushi/tagbar'
    use 'mhinz/vim-startify'
    use 'cohama/lexima.vim'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'ntpeters/vim-better-whitespace'
    use 'vim-scripts/DoxygenToolkit.vim'
    use 'martinda/jenkinsfile-vim-syntax'
    use 'christoomey/vim-tmux-navigator'
    use 'valloric/youcompleteme'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' },
            { 'nvim-telescope/telescope-live-grep-args.nvim' }
        },
        config = function()
            require'telescope'.setup {}
            require'telescope'.load_extension('live_grep_args')
        end,
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {
            hijack_cursor = true,
            open_on_setup = true,
            open_on_tab = true,
            git = {
                ignore = false
            },
        } end,
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'lualine'.setup {} end,
    }

    use {
        'numToStr/Comment.nvim',
        config = function() require'Comment'.setup {} end,
    }
end)

