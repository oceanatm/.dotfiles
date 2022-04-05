set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround' " Select then S followed by a surround
Plugin 'tpope/vim-fugitive' " Git wrapper
Plugin 'tpope/vim-commentary' " Select then gc or just gcc
Plugin 'mattn/emmet-vim' " Use <C-y>, to execute emmet
Plugin 'sheerun/vim-polyglot'
Plugin 'morhetz/gruvbox' " Gruvbox
Plugin 'itchyny/lightline.vim' " Lightline (bar)
Plugin 'preservim/nerdtree'
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Set Colors
    colorscheme gruvbox
    set background=dark
    set laststatus=2
    let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" Set Clipboard to System:
    set clipboard=unnamed,unnamedplus

" Tab Size:
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4

" Tabs to Spaces:
    set expandtab
    set autoindent
    set fileformat=unix

" Numbers:
    set number relativenumber
    set numberwidth=2

" Netrw Options
    let g:netrw_banner = 0
    let g:netrw_liststyle = 3
    " let g:netrw_browse_split = 4
    let g:netrw_altv = 1
    let g:netrw_winsize = 25
    " set autochdir
    " map <C-E> :Lexplore<CR>
    map <C-E> :NERDTreeToggle<CR>
    map <C-P> :FZF<CR>

" Mouse:
    set mouse=a

" Search:
    set hlsearch
    set incsearch

" Syntax:
    syntax on
    set encoding=utf-8

" Autocomplete: 
    set path+=**
    set wildmenu
    "set wildmode=longest,list,full
    " Make Tags for Autocomplete:
        command! MakeTags !ctags -R .

" Splits open at bottom and right:
    set splitbelow splitright

" Split Navigation:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Replace All With S:
    nnoremap S :%s//g<Left><Left>

" New Tab:
    nnoremap <silent> <C-t> :tabnew<CR>

" Save:
    inoremap <C-s> <Esc>:w<CR>i
