
"""""""""""""" Basics #basics
""" Tabs #tabs
" - Two spaces wide
set tabstop=2
set softtabstop=2
" - Expand them all
set expandtab
" - Indent by 2 spaces by default
set shiftwidth=
                                                                                                                                        
""" Format Options #format-options
set formatoptions=tcrq
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
" Plugin 'Valloric/YouCompleteMe'
" " For Enabling Snippets
" 	" Track the engine.
" 	Plugin 'SirVer/ultisnips'
" 	" Snippets are separated from the engine. Add this if you want them:
" 	Plugin 'honza/vim-snippets'
" End Snippets habilitation here	
" Search for Strings
Plugin 'rking/ag.vim'
" Replace string in files
Plugin 'skwp/greplace.vim'
" Collor stuff
Plugin 'chriskempson/base16-vim'
" Identation
Plugin 'prettier/vim-prettier', { 
	\ 'do': 'yarn install', 
	\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] } 

"Testing "
Plugin 'janko-m/vim-test'
"Elm"
Plugin 'ElmCast/elm-vim'
Plugin 'avh4/elm-format'
"Knewter Stuff"
Plugin 'sheerun/vim-polyglot'
  let g:polyglot_disabled = ['elm']

" HTML / JS / CSS
Plugin 'othree/html5.vim'
Plugin 'vim-scripts/html-improved-indentation'
Plugin 'pangloss/vim-javascript'
let g:javascript_plugin_flow = 1
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

"Plug 'flowtype/vim-flow'
Plugin 'carlosrocha/vim-flow-plus'
Plugin 'wokalski/autocomplete-flow'
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

""" Add support for ANSI colors - this has variously been necessary and caused
""" problems, no clue what's up there...
Plugin 'powerman/vim-plugin-AnsiEsc'

" sh
" Plug 'z0mbix/vim-shfmt', { 'for': 'sh' }
"   let g:shfmt_fmt_on_save = 1
"   let g:shfmt_extra_args = '-i 2'

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

" Markdown
function! NpmInstallAndUpdateRemotePlugins(info)
  !npm install
  UpdateRemotePlugins
endfunction
Plugin 'neovim/node-host', { 'do': function('NpmInstallAndUpdateRemotePlugins') }
" Plug 'vimlab/mdown.vim', { 'do': function('NpmInstallAndUpdateRemotePlugins') }

""" Utilities #utilities
" Enable opening a file to a given line with file:lineno
Plugin 'bogado/file-line'

" Vim wiki :)
Plugin 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
" Don't use vimwiki filetype outside of the wiki path
let g:vimwiki_global_ext = 0

" Reformat source code
Plugin 'sbdchd/neoformat'

Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources = {}
let g:deoplete#sources._ = ['file', 'neosnippet']
let g:deoplete#omni#functions = {}
let g:deoplete#omni#input_patterns = {}

" Elm support
" h/t https://github.com/ElmCast/elm-vim/issues/52#issuecomment-264161975
let g:deoplete#sources.elm = ['omni'] + g:deoplete#sources._
let g:deoplete#omni#functions.elm = ['elm#Complete']
let g:deoplete#omni#input_patterns.elm = '[^ \t]+'
let g:deoplete#disable_auto_complete = 1

Plugin 'ervandew/supertab'

" Add comment textobjects (I really want to reformat comments without affecting
" the next line of code)
Plugin 'kana/vim-textobj-user' | Plug 'glts/vim-textobj-comment'
  " Example: Reformat a comment with `gqac` (ac is "a comment")

" EditorConfig support
Plugin 'editorconfig/editorconfig-vim'

" Jump between quicklist, location (syntastic, etc) items with ease, among other things
Plugin 'tpope/vim-unimpaired'

" Line commenting
Plugin 'tomtom/tcomment_vim'
  " By default, `gc` will toggle comments

Plugin 'janko-m/vim-test'                " Run tests with varying granularity
  nmap <silent> <leader>t :TestNearest<CR>
  nmap <silent> <leader>T :TestFile<CR>
  nmap <silent> <leader>a :TestSuite<CR>
  nmap <silent> <leader>l :TestLast<CR>
  nmap <silent> <leader>g :TestVisit<CR><Paste>

" Asynchronous file linter
Plugin 'w0rp/ale'
" wait a bit before checking syntax in a file, if typing
let g:ale_lint_delay = 5000
" Use global eslint
" let g:ale_javascript_eslint_use_global = 1
" Only use es6 for js
"let g:ale_linters = {'javascript': ['eslint'],
" 'javascript.jsx': ['eslint']}
 "let g:ale_linters = {'javascript': ['eslint', 'flow', 'xo']}
let g:ale_linters = {'javascript': ['flow']}
let g:ale_lint_on_save = 0
  let g:ale_lint_on_text_changed = 0
" " let g:ale_fixers = {
" " \   'javascript': [
"" \       'eslint',
" " \   ],
"" \}

" git support from dat tpope
Plugin 'tpope/vim-fugitive'
"
" " github support from dat tpope
Plugin 'tpope/vim-rhubarb'

" visualize your undo tree
Plugin 'sjl/gundo.vim'
  nnoremap <F5> :GundoToggle<CR>

" org-mode
Plugin 'jceb/vim-orgmode'
  let g:org_agenda_files = ['~/org/index.org']
  let g:org_export_emacs = '/usr/local/bin/emacs'
  let g:org_export_verbose = 1

" universal text linking
Plugin 'vim-scripts/utl.vim'

" allow portions of a file to use different syntax
Plugin 'vim-scripts/SyntaxRange'

" increment dates like other items
Plugin 'tpope/vim-speeddating'

" calendar application
Plugin 'itchyny/calendar.vim'
  let g:calendar_google_calendar = 1
  let g:calendar_google_task = 1

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

""" Code Navigation #code-navigation
" fzf fuzzy finder
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
  let g:fzf_layout = { 'window': 'enew' }
  nnoremap <silent> <C-P> :FZF<cr>
  nnoremap <silent> <leader>a :Ag<cr>
  augroup localfzf
    autocmd!
    autocmd FileType fzf :tnoremap <buffer> <C-J> <C-J>
    autocmd FileType fzf :tnoremap <buffer> <C-K> <C-K>
    autocmd VimEnter * command! -bang -nargs=* Ag
      \ call fzf#vim#ag(<q-args>,
      \                 <bang>0 ? fzf#vim#with_preview('up:60%')
      \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
      \                 <bang>0)
  augroup END
 
" Open files where you last left them
Plugin 'dietsche/vim-lastplace

" Easily manage tags files
Plugin 'ludovicchabant/vim-gutentags'
  let g:gutentags_cache_dir = '~/.tags_cache'

" navigate up a directory with '-' in netrw, among other things
Plugin 'tpope/vim-vinegar'


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
