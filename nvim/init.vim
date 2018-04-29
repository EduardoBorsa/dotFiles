filetype off                  " required
set nocompatible              " be iMproved, required

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")
" Elixir stuff
Plugin 'elixir-editors/vim-elixir'
Plugin 'mhinz/vim-mix-format'
" SuperTab
Plugin 'ervandew/supertab'
" Enables Vundle
Plugin 'VundleVim/Vundle.vim'
" Enables comentary
Plugin 'tomtom/tcomment_vim'
" Begin Tpope stuff
    " Enables git comands from inside vim
    Plugin 'tpope/vim-fugitive'
    "Enables surround inside vim"
    Plugin 'tpope/vim-surround'
    "enables Repeat for other plugins
    Plugin 'tpope/vim-repeat'
" End Tpope stuff
" Tmux stuff
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
" Enables NERDTREE
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Enables YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" For Enabling Snippets
	" Track the engine.
	Plugin 'SirVer/ultisnips'
	" Snippets are separated from the engine. Add this if you want them:
	Plugin 'honza/vim-snippets'
	" ES2015 code snippets (Optional)
	Plugin 'epilande/vim-es2015-snippets'
	" React code snippets
	Plugin 'epilande/vim-react-snippets'
" End Snippets habilitation here	
" Javascript highlight Stuff
Plugin 'mxw/vim-jsx'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'
" Search for Strings
Plugin 'rking/ag.vim'
" Replace string in files
Plugin 'skwp/greplace.vim'
" Collor stuff
Plugin 'chriskempson/base16-vim'
"Hard Mode Plugin - Disable hjkl keysk
Plugin 'wikitopian/hardmode'
" Identation
Plugin 'prettier/vim-prettier', { 
	\ 'do': 'yarn install', 
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] } 

"Testing "
Plugin 'janko-m/vim-test'
"Elm"
Plugin 'ElmCast/elm-vim'
Plugin 'avh4/elm-format'

call vundle#end()            " required


" FZF stuff
set rtp+=~/.fzf

" Javascript highlight config and Eslint integration
let g:jsx_ext_required = 0
let g:javascript_plugin_jsdoc = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_select_completion = ['<tab>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:UltiSnipsExpandTrigger = "<C-c>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsListSnippets = "<c-L>"
let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/bundle/vim-snippets/UltiSnips', 'UltiSnips']


" My vim function Mappings
source ~/.config/nvim/mappings.vim

" Elixir format config
let g:mix_format_on_save = 1
" Elf format Config
let g:elm_format_autosave = 1

 
filetype plugin indent on    " required
syntax on
filetype plugin on
filetype indent on

set expandtab
set shiftwidth=2
set softtabstop=2
set number
set autoindent
setlocal spell spelllang=en_us
set complete+=kspell

