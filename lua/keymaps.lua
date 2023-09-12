local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('v', '<S-y>', '"+y', {}) -- copy to system's clipboard
map('n', '<Tab>', ':tabnext<CR>', default_opts) -- go to next tab on <TAB>
map('n', '<S-Tab>', ':tabprev<CR>', default_opts) -- go to previous tab on <S+TAB>
map('n', '<S-x><S-x>', ':tabclose<CR>', default_opts) -- close tab

map('n', '<C-p>', ':Telescope find_files hidden=true<CR>', default_opts) -- find files in telescope
map('n', '<C-a>', ':Telescope live_grep_args<CR>', default_opts) -- find in files
map('n', '<C-c>', ':Telescope git_commits<CR>', default_opts) -- view commits

-- Useful
map('n', '<F1>', ':nohl<CR>', default_opts) -- reset search highlighting
map('i', '<F1>', ':nohl<CR>', default_opts) -- reset search highlighting
map('n', '<F2>', ':StripWhitespace<CR>', default_opts) -- delete trailing whitespaces
map('i', '<F2>', ':StripWhitespace<CR>', default_opts) -- delete trailing whitespaces
map('n', '<F3>', ':set relativenumber!<CR>', default_opts) -- toggle relative numbers
map('n', '<F3>', ':set relativenumber!<CR>', default_opts) -- toggle relative numbers

-- Side bars
map('n', '<F5>', ':NvimTreeToggle<CR>', default_opts)
map('n', '<F6>', ':TagbarToggle<CR>', default_opts)

-- Code navigation
map('n', '<F9>', ':YcmCompleter GoToDeclaration<CR>', default_opts)
map('n', '<F10>', ':YcmCompleter GoToDefinition<CR>', default_opts)

map('n', '<A-q>', ':Dox<CR>', default_opts)
map('i', '<A-q>', ':Dox<CR>', default_opts)

