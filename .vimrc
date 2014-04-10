set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'scrooloose/syntastic'

" 绑定键位
nmap <C-a> <home> 
nmap <C-e> <end>
nmap <C-d> <Delete>
imap jj <Esc>  
imap ;; <Esc>
filetype plugin indent on     " equired
Bundle "mattn/emmet-vim"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" 基础
syntax on
set ai
set history=100
set hlsearch
filetype plugin on
set number
set cursorline
set foldenable
set foldmethod=syntax
set mouse=a
set clipboard=unnamed
set matchpairs+=<:>
set laststatus=2

" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml,tpl setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120


imap jj <Esc>


