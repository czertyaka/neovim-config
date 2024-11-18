local cmd = vim.cmd -- execute Vim commands
local opt = vim.opt -- global/buffer/windows-scoped options

-- General
opt.colorcolumn = '100'     -- set ruler position
opt.number = true           -- lines number on
opt.relativenumber = true   -- relative line numbers
opt.cursorline = true       -- highlight the screen line of the cursor
opt.wrap = false            -- do not wrap long lines
opt.splitright = true  	    -- open vertical split always at right
opt.splitbelow = true  	    -- open horizontal split always below
opt.expandtab = true	    -- use spaces instead of tabs
opt.shiftwidth = 4	        -- shift 4 spaces when tab
opt.softtabstop = 4	        -- shift 4 spaces when tab
opt.tabstop = 4		        -- 1 tab == 4 spaces
opt.completeopt = 'menu'    -- do not show preview for autocompletion
opt.cmdheight = 0           -- hide command line

cmd.colorscheme "catppuccin"
