local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

map('v', '<S-y>', '"+y', {}) -- copy to system's clipboard
map('n', '<Tab>', ':tabnext<CR>', default_opts) -- go to next tab on <TAB>
map('n', '<S-Tab>', ':tabprev<CR>', default_opts) -- go to previous tab on <S+TAB>
map('n', '<F1>', ':nohl<CR>', default_opts) -- reset search highlighting
map('n', '<F2>', ':StripWhitespace<CR>', default_opts) -- delete trailing whitespaces
map('n', '<F3>', ':set relativenumber!<CR>', default_opts) -- toggle relative numbers
