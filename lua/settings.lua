local cmd = vim.cmd -- execute Vim commands
local opt = vim.opt -- global/buffer/windows-scoped options

-- General
opt.colorcolumn = '100' -- set ruler position
opt.number = true       -- lines number on
opt.cursorline = true   -- highlight the screen line of the cursor
opt.wrap = false        -- do not wrap long lines
opt.undofile = true    	-- rolling back file (?)
opt.splitright = true  	-- open vertical split always at right
opt.splitbelow = true  	-- open horizontal split always below
opt.expandtab = true	-- use spaces instead of tabs
opt.shiftwidth = 4	    -- shift 4 spaces when tab
opt.softtabstop = 4	    -- shift 4 spaces when tab
opt.tabstop = 4		    -- 1 tab == 4 spaces
opt.smartindent = true  -- autoindent new lines
 -- do not autocomment new lines
cmd [[au BufEnter * set fo-=c fo-=r fo-=o]]

-- Colors and theme
opt.termguicolors = true                --  24-bit RGB colors
cmd'colorscheme desert' -- scheme name

-- Plugins settings
-- GitGutter
vim.g.gitgutter_sign_allow_clobber = 0 -- do not override sign column writter by other plugins

