-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"      -- use the unnamedplus register for clipboard copy / paste
vim.opt.compatible = false
vim.opt.cursorline = true              -- highlight line where the cursor is
vim.opt.expandtab = true               -- convert tabs to space
vim.opt.foldenable = false             -- do not fold automatically when openning a file
vim.opt.foldlevel = 7                  -- automatically fold stuff beyond level 7
vim.opt.hlsearch = true                -- highlight search results
vim.opt.ignorecase = true              -- use with the smartcase option to enable smartcase searches
vim.opt.linebreak = true               -- breaks lines by word rather than char
vim.opt.list = true
vim.opt.number = true                  -- display line numbers
vim.opt.scrolloff = 4                  -- leave 4 lines on edges when scrolling
vim.opt.shiftwidth = 2                 -- when shifting, indent 2 spaces
vim.opt.smartcase = true               -- use smartcase for searches
vim.opt.smarttab = true                -- insert "tabstop" number of spaces when the tab is pressed
vim.opt.softtabstop = 2
vim.opt.splitbelow = true              -- open new vertical splits below
vim.opt.splitright = true              -- open new horizontal splits on the right
vim.opt.tabstop = 2                    -- 2 spaces for tabs
vim.opt.termguicolors = true           -- enable colors in terminal
vim.opt.wrap = true                    -- wrap lines if necessary
vim.opt.relativenumber = true          -- show relative line numbers
vim.opt.swapfile = false               -- disable swap files

vim.g.mapleader = ' '                  -- space key as leader

vim.cmd('colorscheme base16-eighties') -- color scheme

-- disable auto insertion of comment syntax on newlines
-- https://vim.fandom.com/wiki/Disable_automatic_comment_insertion
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

