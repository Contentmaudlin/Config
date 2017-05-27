" Set how many lines of history VIM remembers "
set history=500

" Enable plugins"
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Get wild menu "
set wildmenu

" Height of the comamand bar "
set cmdheight=2
set ruler
" autocmd BufEnter *.c setlocal tabstop=8 shiftwidth=8 softtabstop=8 textwidth=80 noexpandtab cinoptions=:0,l1,t0,g0,( " 0
syntax enable
set number
set incsearch

" Color scheme " 
try
	colorscheme CandyPaper
catch
endtry

" Highlight search results "
set hlsearch

" Inc search "
set incsearch

" Magic for regular expressions "
set magic

" Avoid annoying shit "
set noerrorbells
set novisualbell
set tm=500

" Ignore case when searching "
set ignorecase

" Tabs and spaces "
set tabstop=2
set shiftwidth=2
set backspace=2

" Linebreak on 500 characters "
set lbr
set tw=500

set ai "Auto indent"
set si "Smart indent"

" Use Unix as the standard file type"
set ffs=unix,dos,mac

" ============================== "
" Vundle shit ================== "
" ============================== "
set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" YCM Autocomplete "
Plugin 'Valloric/YouCompleteMe'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Debugger "
Plugin 'scrooloose/syntastic'

" Color scheme plug in "
Plugin 'flazz/vim-colorschemes'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" 
"filetype plugin on " 

let g:ycm_complete_in_comments_and_strings=1
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
