-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.compatible = false
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.foldenable = true
vim.opt.foldlevel = 1
vim.opt.hlsearch = true
vim.opt.linespace = 0
vim.opt.list = false
vim.opt.number = true
vim.opt.scrolloff = 4                  -- leave 4 lines on edges when scrolling
vim.opt.shiftwidth = 2
vim.opt.showmatch = true
vim.opt.softtabstop = 2
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.synmaxcol = 200
vim.opt.tabstop = 2                    -- 2 spaces for tabs
vim.opt.termguicolors = true           -- enable colors in terminal
vim.opt.wrap = true                    -- wrap lines
vim.opt.linebreak = true               -- breaks lines by word rather than char

vim.g.mapleader = ' '                  -- space key as leader

vim.cmd('colorscheme base16-eighties') -- color scheme
