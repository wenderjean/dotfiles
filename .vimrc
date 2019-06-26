set nocompatible

syntax on

let mapleader=","

set backspace=indent,eol,start
set backup
set mouse=a
set clipboard+=unnamed
set backupdir=~/.vim/backup
set directory=~/.vim/tmp
set fileformats=unix,dos,mac
set hidden
set noerrorbells
set wildmenu
set incsearch
set hlsearch
set number
set showcmd
set cursorline
set showmatch
set expandtab
set ignorecase
set nowrap
set shiftround
set smartcase
set tabstop=2
set softtabstop=2
set shiftwidth=2
set foldmethod=manual

au BufNewFile,BufRead *.conf set filetype=conf
au FileType python setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ntk148v/vim-horizon'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim.git'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'L9'
Plugin 'mileszs/ack.vim'
Plugin 'FuzzyFinder'
call vundle#end()

filetype plugin indent on

set shortmess+=A
colorscheme horizon
set background=dark

cnoreabbrev Ack Ack!

"handling split of windows I stole this from
"http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Leader>a :Ack!<Space>
set splitbelow
set splitright

map <C-o> <Esc>:TlistToggle<CR>
"Keeping the control + t as file searcher 'til my fingers get used to CtrlP
map <C-t> <Esc>:CtrlP<CR>
"Since I'd never remembered buffers commands at least here I can buffer list
"all and better using ctrl+shift+b ;)
map <C-B> <Esc>:CtrlPBuffer<CR>
map <C-A> <Esc>:Ack<CR>

"Matching files showing above
let g:ctrlp_match_window_reversed = 0
"Change the default behavior for new tab with file thanks to
"https://github.com/kien/ctrlp.vim/issues/289
let g:ctrlp_working_path_mode     = 0
let g:ctrlp_dotfiles              = 0
let g:ctrlp_show_hidden           = 1

"close taglist window when you close the last work window
let Tlist_Exit_OnlyWindow         = 1
let Tlist_Close_On_Select         = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"shows only the current file on taglist browser
let Tlist_Show_One_File           = 1

set wildignore+=*/build/*,*/node_modules/*,public/images,*/bundler,*/bundle,*/.bundle,spec/reports,doc,coverage,tmp,*.pyc
if has('mac')
  set guifont=Monaco:h13
endif
let g:airline_powerline_fonts = 1

"Mappings that I use often
map <F4> :!rspec %:p --color -fd<CR>
map <F3> :!bundle exec rspec %:p --color -fd<CR>

"Shows extra trailing white space
"stealed from http://vim.wikia.com/wiki/Highlight_unwanted_spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set colorcolumn=99

if executable('ag')
  let g:ackprg = 'ag --nogroup --column --hidden --ignore .git'
endif
