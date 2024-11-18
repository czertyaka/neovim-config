return {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
        require("catppuccin").setup {
            flavour = "mocha",
            default_integrations = true,
            integrations = {
                gitsigns = true,
                telescope = true,
                treesitter = true,
                treesitter_context = true,
            },
        }
    end,
}
