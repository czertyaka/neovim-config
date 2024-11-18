return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup {
            signs = {
                add          = { text = '│' },
                change       = { text = '│' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
            },
            current_line_blame = true,
            sign_priority = 6,
            update_debounce = 200,
            max_file_length = 40000,
        }
    end,
}
