set nocompatible               " be improved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")            " required
Plugin 'VundleVim/Vundle.vim'  " required

" ===================
" my plugins here
" ===================
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'


" Plugin 'dracula/vim'


" ===================
" end of plugins
" ===================
call vundle#end()               " required
filetype plugin indent on       " required
