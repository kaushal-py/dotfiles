set nocompatible

"######################################################################################"
"
" Download and install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'sonph/onehalf', {'rtp': 'vim'}
Plug 'jiangmiao/auto-pairs'
Plug 'vim-python/python-syntax'

" Initialize plugin system
call plug#end()
"######################################################################################"

set t_Co=256                            " Set 256 color scheme
let g:python_highlight_all=1            " Turn on pyton syntax highlighting
set cursorline                          " highlight current line
colorscheme onehalfdark                 " First theme I liked
set background=dark                     " Set dark background
set numberwidth=5                       " width setting for line-numbers 
syntax on			                    " Enable Syntax Highlighting

set tabstop=4       	                " number of visual spaces per TAB
set softtabstop=4   	                " number of spaces in tab when editing
set expandtab			                " tabs are spaces
set number                              " show line numbers
set showcmd                             " show command in bottom bar
set showmatch                           " highlight matching [{()}]
set incsearch                           " search as characters are entered

filetype indent on                      " load filetype-specific indent files
filetype plugin on                      " load filetype-specific plugins

set path+=**                            " Fuzzy File search

