return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "catppuccin/nvim",
        "kyazdani42/nvim-web-devicons",
    },
    config = function()
        require('lualine').setup {
            options = {
                theme = "catppuccin",
                component_separators = { left = '|', right = '|'},
                section_separators = { left = '', right = ''},
            },
        }
    end,
}
