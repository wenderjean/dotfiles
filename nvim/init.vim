lua require('plugins')
lua require('theme')
lua require('telescope')

set nocompatible

set backupdir=~/.cache/vim
set cc=120
set clipboard=unnamedplus
set ignorecase
set mouse=a
set noswapfile
set number
set shiftwidth=2
set softtabstop=2
set splitright
set splitbelow
set tabstop=2
set ttyfast
set wildmode=longest,list
set statusline+=%F

syntax on

nnoremap <C-p> <cmd>Telescope find_files<cr>
