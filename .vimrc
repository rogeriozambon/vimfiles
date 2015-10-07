set nocompatible
syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set hlsearch
set incsearch
set ignorecase
set smartcase

set ls=2
set number
set cursorline
colorscheme monokai

set completeopt=menuone,longest
set wildmode=list:longest,full
set wildignore+=.git

set hidden

set path=$PWD/**
set backupdir=/tmp
set directory=/tmp

" initializes pathogen to manage plugins
call pathogen#infect()

map <F2> :NERDTreeTabsToggle<CR>
map <Tab> gt

nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Activate visual mode in normal mode
nmap <S-Up> V
nmap <S-Down> V

" These are mapped in visual mode
vmap <S-Up> k
vmap <S-Down> j

" Add Ctrl+C, Ctrl+X, Ctrl+V keys to copy/cut/paste action
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

" Enable Rainbow Parentheses
au VimEnter * RainbowParenthesesToggleAll
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
