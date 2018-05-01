set tabstop=2
set softtabstop=2
" - Expand them all
set expandtab
" - Indent by 2 spaces by default
set shiftwidth=2
                                                                                                                                        
""" Format Options #format-options
" set formatoptions=tcrq
set textwidth=65
""" Handling backup copies
" make a copy of the file and overwrite the original one
set backupcopy=yes

""" Leader #leader
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
set number

filetype off                  " required
set nocompatible              " be iMproved, required
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")
" Enables Vundle
Plugin 'VundleVim/Vundle.vim'
"Enables surround inside vim"
Plugin 'tpope/vim-surround'
"Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"enables Repeat for other plugins
Plugin 'tpope/vim-repeat'
" Tmux stuff
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
" Search for Strings
Plugin 'rking/ag.vim'
" Replace string in files
Plugin 'skwp/greplace.vim'
" Collor stuff
Plugin 'chriskempson/base16-vim'

"Knewter Stuff"
Plugin 'sheerun/vim-polyglot'
  let g:polyglot_disabled = ['elm']
" HTML / JS / CSS
Plugin 'othree/html5.vim'
Plugin 'vim-scripts/html-improved-indentation'
Plugin 'pangloss/vim-javascript'
" For func argument completion
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" Automatically imports missing JS dependencies and removes unused ones.
Plugin 'karthikv/tradeship-vim'
Plugin 'prettier/vim-prettier', {
\ 'do': 'yarn install',
\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.css,*.scss,*.less PrettierAsync

" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 65

" number of spaces per indentation level
let g:prettier#config#tab_width = 2

" use tabs over spaces
let g:prettier#config#use_tabs = 'false'

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'false'

" none|es5|all
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|postcss
let g:prettier#config#parser = 'flow'

" Elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'
Plugin 'mhinz/vim-mix-format'
  let g:mix_format_on_save = 0
  let g:mix_format_options = '--check-equivalent'


" Phoenix
Plugin 'c-brenn/phoenix.vim'
Plugin 'tpope/vim-projectionist' " required for some navigation features

" Elm
Plugin 'ElmCast/elm-vim'
  let g:elm_format_autosave = 1
  let g:elm_detailed_complete = 1
  let g:elm_syntastic_show_warnings = 1
  let g:elm_format_fail_silently = 0
  let g:elm_browser_command = 'open'
  let g:elm_make_show_warnings = 1
  let g:elm_setup_keybindings = 1

" Reformat source code
Plugin 'sbdchd/neoformat'

Plugin 'ervandew/supertab'

" Add comment textobjects (I really want to reformat comments
" without affecting the next line of code)
Plugin 'kana/vim-textobj-user' | Plugin 'glts/vim-textobj-comment'
  " Example: Reformat a comment with `gqac` (ac is "a comment")

" Jump between quicklist, location (syntastic, etc) items with
" ease, among other things
Plugin 'tpope/vim-unimpaired'

" Line commenting
Plugin 'tomtom/tcomment_vim'
  " By default, `gc` will toggle comments

Plugin 'janko-m/vim-test' 

" git support from dat tpope
Plugin 'tpope/vim-fugitive'
"
" " github support from dat tpope
Plugin 'tpope/vim-rhubarb'

" visualize your undo tree
Plugin 'sjl/gundo.vim'
  nnoremap <F5> :GundoToggle<CR>


" universal text linking
Plugin 'vim-scripts/utl.vim'

" allow portions of a file to use different syntax
Plugin 'vim-scripts/SyntaxRange'

" increment dates like other items
Plugin 'tpope/vim-speeddating'

" nicer api for neovim terminal
Plugin 'kassio/neoterm'

""" UI Plugins #ui-plugins
" Molokai theme makes me cozy
Plugin 'tomasr/molokai'
Plugin 'fmoralesc/molokayo'
" Try out the ayu theme - https://github.com/ayu-theme/ayu-vim
Plugin 'ayu-theme/ayu-vim'
" Solarized - variant with specific terminal support
Plugin 'lifepillar/vim-solarized8'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
  "let g:airline_theme = 'luna'
  "let g:airline_theme = 'lucius'
  let g:airline_theme = 'solarized'
  let g:bufferline_echo = 0
  let g:airline_powerline_fonts=0
  let g:airline_enable_branch=1
  let g:airline_enable_syntastic=1
  let g:airline_branch_prefix = '⎇ '
  let g:airline_paste_symbol = '∥'
  let g:airline#extensions#tabline#enabled = 0
  let g:airline#extensions#ale#enabled = 1

"" Code Navigation #code-navigation
" fzf fuzzy finder
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
  let g:fzf_layout = { 'window': 'enew' }
  nnoremap <silent> <C-P> :FZF<cr>
 
" Open files where you last left them
Plugin 'dietsche/vim-lastplace'

" Easily manage tags files
Plugin 'ludovicchabant/vim-gutentags'
  let g:gutentags_cache_dir = '~/.tags_cache'

" navigate up a directory with '-' in netrw, among other things
Plugin 'tpope/vim-vinegar'
call vundle#end()            " required

" FZF stuff
set rtp+=~/.fzf

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

set autoindent
setlocal spell spelllang=en_us
set complete+=kspell

" NO ARROW KEYS COME ON
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

" Keep the cursor in place while joining lines
nnoremap J mzJ`z
" Makes foo-bar considered one word
set iskeyword+=-
