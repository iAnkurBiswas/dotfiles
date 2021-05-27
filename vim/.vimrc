set runtimepath+=~/.vim_runtime
let g:snipMate = { 'snippet_version' : 1 }

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

" Basic behaviour 
set nocompatible
set number
set wrap
set encoding=utf-8
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set ruler
set visualbell
set nostartofline

" Key Bindings
nmap j gj
nmap k gk

" Vim Appearance
colorscheme slate

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on

" Tab settings
set autoindent
set smartindent

" Miscellaneous settings that might be worth enabling
set cursorline

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

