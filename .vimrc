set nocompatible              " be iMproved, required
filetype off                  " required


set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

" This makes vim act like all other editors, buffers can
" " exist in the background without being in a window.
" " http://items.sjbach.com/319/configuring-vim-right
set hidden



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

Bundle 'derekwyatt/vim-scala'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'Shougo/neocomplete.vim'
Bundle 'ntpeters/vim-better-whitespace'
Bundle 'itchyny/lightline.vim'

" git
" gitk for vim
Bundle 'gregsexton/gitv'
" post gist
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

" langs
 "langs pack
Bundle 'sheerun/vim-polyglot'
  " support for textual sinppeets
Bundle 'garbas/vim-snipmate'
 "snippets pack for many langs.
Bundle 'marcweber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'honza/vim-snippets'
 "syntax checking
Bundle 'scrooloose/syntastic'

" search
 "print numbers of matches
Bundle 'vim-scripts/IndexedSearch'
 "search by selected text in the file
Bundle 'nelstrom/vim-visual-star-search'

" vim awesome
Bundle 'tpope/vim-surround'
 " create pair tags
Bundle 'tpope/vim-ragtag'
 " auto add to structure code ex. if end
Bundle 'tpope/vim-endwise'
 "easily search for, substitute, and abbreviate multiple variants of a word
Bundle 'tpope/vim-abolish'
 " yank history
Bundle 'skwp/YankRing.vim'
 " change code only to selected region
Bundle 'chrisbra/NrrwRgn'
 "tabularizeee :D
Bundle 'godlygeek/tabular'
 "change content inside surroudings
Bundle 'briandoll/change-inside-surroundings.vim'
 "auto completion for quotes, parens, brackets
Bundle 'Raimondi/delimitMate'
 "split multiline and single line
Bundle 'AndrewRadev/splitjoin.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
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



" ================ Turn Off Swap Files ==============
"
set noswapfile
set nobackup
set nowb


" ================ Indentation ======================
"
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin indent on    " required


" Display tabs and trailing spaces visually
" set list listchars=tab:\ \ ,trail:·
"
set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Scrolling ========================
"
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

syntax enable
set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256


autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=4 sts=4 sw=4

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*,*/node_modules/*,*/bower_components/*
set wildignore+=*/dist/*
