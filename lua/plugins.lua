-- Plugins

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'majutsushi/tagbar'
    use 'mhinz/vim-startify'
    use 'cohama/lexima.vim'
    use 'morhetz/gruvbox'
    use 'navarasu/onedark.nvim'
    use 'valloric/youcompleteme'
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'ntpeters/vim-better-whitespace'
    use 'vim-scripts/DoxygenToolkit.vim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function() require'telescope'.setup {} end,
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'nvim-tree'.setup {} end,
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require'lualine'.setup {} end,
    }

    use {
        'numToStr/Comment.nvim',
        config = function() require'Comment'.setup() end,
    }

end)

