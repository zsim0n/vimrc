" Vundle setup
set nocompatible               " be iMproved 
filetype off                   " required! 
set rtp+=~/.vim/bundle/vundle/
if has("win32") 
    set shell=powershell
    set shellcmdflag=-command
endif
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
    "
Bundle 'wombat256.vim'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'phpcs.vim'
Bundle 'php-cs-fixer'
Bundle 'PDV--phpDocumentor-for-Vim'
Bundle 'EasyMotion'
Bundle 'matchit.zip'
"Bundle 'TinyBufferExplorer'
Bundle 'Lokaltog/vim-powerline'
Bundle 'html5.vim' 
Bundle 'minibufexpl.vim'

Bundle 'elzr/vim-json'
autocmd BufNewFile,BufRead *.json set ft=json

Bundle 'SuperTab'
Bundle 'delimitMate.vim'

Bundle 'behat.zip'
let feature_filetype='behat'

"Bundle 'Windows-PowerShell-Syntax-Plugin'

"
filetype plugin indent on     " required!
" Vundle setup End


colorscheme wombat256mod
syntax on
set termencoding=utf8
set encoding=utf8

\" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!/usr/bin/php %<CR>

\" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!/usr/bin/php -l %<CR>

" Set Tabs and spacing for PHP as recommended by PEAR and Zend
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" File Type detection
filetype on
filetype plugin on
filetype indent on

" Set Auto-indent options
set cindent
set smartindent
set autoindent

" Show lines that exceed 80 characters
match ErrorMsg '\%80v.\+'

" Show a status bar
set ruler
set laststatus=2

" Show Tab Bar
set showtabline=2

" Set Search options highlight, and wrap search
set hls is
set wrapscan
set ignorecase
set hlsearch
set incsearch

" Enable Spell Checking
set spell

" Turn on Line numbers
set number

" Enable Code Folding
set foldenable
set foldmethod=syntax
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" I like to see the pair of any braces
set showmatch
" " I usually edit C-like code (C, PHP, JAVA, etc)
set autoindent
" " In block mode I like to move beyond line endings
set virtualedit=block
" Turn on wildmenu in Ex mode
set wildmenu
set wildmode=list:longest

"PowerLine
"let g:Powerline_symbols = 'fancy
set t_Co=256
set history=1000
set undolevels=1000

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
map <Tab> <C-W>w

set list
set listchars=eol:¬,trail:.
