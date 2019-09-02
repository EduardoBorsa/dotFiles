set tabstop=2
set softtabstop=2

" - Expand them all
set expandtab

" - Indent by 2 spaces by default
set shiftwidth=2

set autowrite
set noswapfile

"ctags stuff
set tags=tags

""" Format Options #format-options
" set formatoptions=tcrq
set textwidth=120

""" Handling backup copies
" make a copy of the file and overwrite the original one
set backupcopy=yes

" Use space for leader
let g:mapleader=' '

" Double backslash for local leader
let g:maplocalleader='\\'

""" omni #omni
" enable omni syntax completion
set omnifunc=syntaxcomplete#Complete

" Highlight search results
set hlsearch

" Ignore case when searching
set ignorecase smartcase

" Ignore case when searching lowercase
set smartcase

" Line numbering
" set number
set relativenumber
" set rnu

" vnoremap <silent><Leader>y "yy <Bar> :call system('xclip', @y)<CR>
vnoremap <silent>y "yy <Bar> :call system('xclip', @y)<CR>

let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsExpandTrigger="<c-j>"
