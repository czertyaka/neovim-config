return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-live-grep-args.nvim",
    },
    opts = function()
        local actions = require("telescope.actions")
        return {
            defaults = {
                mappings = {
                    i = {
                        ["<C-j>"] = actions.move_selection_better,
                        ["<C-k>"] = actions.move_selection_worse,
                    },
                    n = {
                        ["q"] = actions.close,
                    }
                },
                file_ignore_patterns = {},
            }
        }
    end,
    config = function(_, opts)
        local telescope = require('telescope')
        telescope.setup(opts)

        pcall(telescope.load_extension, "live_grep_args")

        local builtin = require('telescope.builtin')
        local extensions = telescope.extensions

        vim.api.nvim_set_keymap(
            'n',
            '<C-p>',
            [[<cmd>lua require('telescope.builtin').find_files({ hidden = true })<CR>]],
            { noremap = true, silent = true }
        )
        vim.api.nvim_set_keymap(
            'n',
            '<C-a>',
            [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]],
            { noremap = true, silent = true }
        )
    end,
}
