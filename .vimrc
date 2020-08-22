set clipboard=unnamed       "Enable clipboard
filetype plugin indent on   "Enable indent plugin
syntax enable               "Enable syntax coloring
syntax on                   "Turn syntax coloring on
set nocompatible            "Allow Vim-only settings even if they break vi keybindings.
set incsearch               "Find as you type
set ignorecase              "Ignore case in search
set scrolloff=5             "Number of lines to keep above/below cursor
set smartcase               "Only ignore case when all letters are lowercase
set wildmode=longest,list   "Complete longest string, then list alternatives
set fileformats=unix        "Use Unix line endings
set smartindent             "Smart autoindenting on new line
set smarttab                "Respect space/tab settings
set history=300             "Number of commands to remember
set backspace=2             "Use standard backspace behavior
set hlsearch                "Highlight matches in search
set ruler                   "Show line and column number
set formatoptions=1         "Don't wrap text after a one-letter word
set linebreak               "Break lines when appropriate
set autoindent              "Auto indent based on previous line
set nocompatible
filetype off
syntax on
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set confirm
set number
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'kien/ctrlp.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()
filetype plugin indent on
let python_highlight_all = 1
let g:airline_powerline_fonts = 1
set complete+=kspell
set ttymouse=sgr
set laststatus=2
set noshowmode
