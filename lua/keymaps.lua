local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('v', '<S-y>', '"+y', {}) -- copy to system's clipboard

map('n', '<C-s>', ':w<CR>',  default_opts) -- save in notmal mode
map('i', '<C-s>', '<ESC>:w<CR>', default_opts) -- save in insert mode

map('n', '<Tab>', ':tabnext<CR>', default_opts) -- go to next tab on <TAB>
map('n', '<S-Tab>', ':tabprev<CR>', default_opts) -- go to previous tab on <S+TAB>

map('n', '<F1>', ':nohl<CR>', default_opts) -- reset search highlighting

-- Telescope
-- find files in telescope
map('n', '<C-p>', ':Telescope find_files<CR>', default_opts)
-- find in files
map('n', '<C-a>', ':Telescope live_grep<CR>', default_opts)
-- view commits
map('n', '<C-c>', ':Telescope git_commits<CR>', default_opts)

-- Tagbar
map('n', '<F8>', ':TagbarToggle<CR>', default_opts)

-- NvimTree
map('n', '<F7>', ':NvimTreeToggle<CR>', default_opts)

-- YouCompleteMe
map('n', '<F9>', ':YcmCompleter GoToDeclaration<CR>', default_opts)
