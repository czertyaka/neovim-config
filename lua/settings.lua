local cmd = vim.cmd -- execute Vim commands
local fn = vim.fn   -- execute Vim builtin functions
local opt = vim.opt -- global/buffer/windows-scoped options
local glo = vim.g   -- global variables

-- General
opt.colorcolumn = '100'         -- set ruler position
opt.number = true               -- lines number on
opt.cursorline = true           -- highlight the screen line of the cursor
opt.wrap = false                -- do not wrap long lines
opt.undofile = true    	        -- rolling back file (?)
opt.splitright = true  	        -- open vertical split always at right
opt.splitbelow = true  	        -- open horizontal split always below
opt.expandtab = true	        -- use spaces instead of tabs
opt.shiftwidth = 4	            -- shift 4 spaces when tab
opt.softtabstop = 4	            -- shift 4 spaces when tab
opt.tabstop = 4		            -- 1 tab == 4 spaces
opt.smartindent = true          -- autoindent new lines
opt.guicursor = "a:blinkon500"  -- make cursor blink
opt.relativenumber = true       -- relative line numbers
opt.completeopt = 'menu'        -- do not show preview for autocompletion
 -- do not autocomment new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Colors and theme
opt.termguicolors = true            --  24-bit RGB colors
glo.everforest_background='hard'    -- increase contrast
cmd'colorscheme catppuccin-mocha'   -- scheme name

-- Plugins settings
-- GitGutter
vim.g.gitgutter_sign_allow_clobber = 0  -- do not override sign column writter by other plugins

-- DoxygenToolkit
glo.DoxygenToolkit_briefTag_pre = ""
glo.DoxygenToolkit_compactDoc = "yes"
glo.DoxygenToolkit_compactOneLineDoc = "yes"

-- YouCompleteMe
glo.ycm_clangd_args = {
    '--header-insertion=never'                                                  -- disable headers auto-inserting
}
glo.ycm_open_loclist_on_ycm_diags = 0               -- do not open local list
glo.ycm_complete_in_comments = 1                    -- enable autocompletion in comments
glo.ycm_clangd_uses_ycmd_caching = 0                -- let clangd control code completion
