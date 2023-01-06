-- move between panes to left/bottom/top/right
vim.cmd('nnoremap <C-h> <C-w>h')
vim.cmd('nnoremap <C-j> <C-w>j')
vim.cmd('nnoremap <C-k> <C-w>k')
vim.cmd('nnoremap <C-l> <C-w>l')

-- jk to exit insert mode.
vim.cmd('inoremap jk <Esc>')

-- go next / previous buffer
vim.cmd('nnoremap <leader>l :bn<CR>')
vim.cmd('nnoremap <leader>h :bp<CR>')

