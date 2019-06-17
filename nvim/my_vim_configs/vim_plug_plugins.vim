filetype off                  " required
set nocompatible              " be iMproved, required
" set rtp+=~/.config/nvim/bundle/Vundle.vim

call plug#begin("~/.config/nvim/plugged")

"Enables surround inside vim"
Plug 'tpope/vim-surround'

"Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"enables Repeat for other plugins
Plug 'tpope/vim-repeat'

" Tmux stuff
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'

" Search for Strings
Plug 'rking/ag.vim'

" Replace string in files
Plug 'skwp/greplace.vim'

" Collor stuff
Plug 'chriskempson/base16-vim'

" Multiple cursor - just like Atom
Plug 'terryma/vim-multiple-cursors'

" Enalbe Diff Between Folders
Plug 'will133/vim-dirdiff'

" Colors for Vim
Plug 'chrisbra/Colorizer'

" Vue
Plug 'posva/vim-vue'

"Knewter Stuff
" Elm
Plug 'ElmCast/elm-vim'
let g:elm_format_autosave = 1
let g:elm_detailed_complete = 0
" let g:elm_detailed_complete = 1
" let g:elm_syntastic_show_warnings = 1
let g:elm_syntastic_show_warnings = 0
let g:elm_format_fail_silently = 0
let g:elm_browser_command = 'open'
let g:elm_make_show_warnings = 1
let g:elm_setup_keybindings = 1

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
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
" let g:deoplete#disable_auto_complete = 1
let g:deoplete#enable_at_startup = 1

Plug 'sheerun/vim-polyglot'
let g:polyglot_disabled = ['elm']
" HTML / JS / CSS
Plug 'othree/html5.vim'
Plug 'vim-scripts/html-improved-indentation'
Plug 'pangloss/vim-javascript'

" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" Automatically imports missing JS dependencies and removes unused ones.
Plug 'karthikv/tradeship-vim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" let g:prettier#exec_cmd_path = "/home/dado/.nvm/versions/node/v10.14.2/bin/prettier"
"
" " let g:prettier#autoformat = 0
" " autocmd BufWritePre *.js,*.css,*.scss,*.less PrettierAsync
"
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.yaml,*.html PrettierAsync
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"
"
" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 120
"
" " number of spaces per indentation level
let g:prettier#config#tab_width = 2
"
" " use tabs over spaces
" let g:prettier#config#use_tabs = 'false'
" "
" " " print semicolons
" let g:prettier#config#semi = 'true'
" "
" " " single quotes over double quotes
" let g:prettier#config#single_quote = 'true'
"
" " print spaces between brackets
" let g:prettier#config#bracket_spacing = 'true'
"
" " put > on the last line instead of new line
" let g:prettier#config#jsx_bracket_same_line = 'false'


" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 0
let g:mix_format_options = '--check-equivalent'

" Phoenix
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist' " required for some navigation features
Plug 'andyl/vim-projectionist-elixir'
" Ruby
Plug 'ruby-formatter/rufo-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

"Cucumber

Plug 'tpope/vim-cucumber'

" Reformat source code
Plug 'sbdchd/neoformat'

Plug 'ervandew/supertab'

" Add comment textobjects (I really want to reformat comments
" without affecting the next line of code)
Plug 'kana/vim-textobj-user' | Plug 'glts/vim-textobj-comment'
" Example: Reformat a comment with `gqac` (ac is "a comment")

" Jump between quicklist, location (syntastic, etc) items with
" ease, among other things
Plug 'tpope/vim-unimpaired'

" Line commenting
Plug 'tomtom/tcomment_vim'
" By default, `gc` will toggle comments

Plug 'janko-m/vim-test'
" run tests in neoterm
let g:test#strategy = 'neoterm'
" I use spinach, not cucumber!
let g:test#ruby#cucumber#executable = 'spinach'

" git support from dat tpope
Plug 'tpope/vim-fugitive'
"
" " github support from dat tpope
Plug 'tpope/vim-rhubarb'

" visualize your undo tree
Plug 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>


" universal text linking
Plug 'vim-scripts/utl.vim'

" allow portions of a file to use different syntax
Plug 'vim-scripts/SyntaxRange'

" increment dates like other items
Plug 'tpope/vim-speeddating'

" nicer api for neovim terminal
Plug 'kassio/neoterm'

""" UI Plugs #ui-plugins
" Molokai theme makes me cozy
Plug 'tomasr/molokai'
Plug 'fmoralesc/molokayo'
" Try out the ayu theme - https://github.com/ayu-theme/ayu-vim
Plug 'ayu-theme/ayu-vim'
" Solarized - variant with specific terminal support
Plug 'lifepillar/vim-solarized8'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:airline_theme = 'luna'
"let g:airline_theme = 'lucius'
let g:airline_theme = 'onedark'
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
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
let g:fzf_layout = { 'window': 'enew' }
nnoremap <silent> <C-P> :FZF<cr>
map <C-N> :vsp<CR><C-P>
map <leader>n :tabnew .<CR><C-P>
map <C-C> :q<CR>


" Open files where you last left them
Plug 'dietsche/vim-lastplace'

" Easily manage tags files
Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

" navigate up a directory with '-' in netrw, among other things
Plug 'tpope/vim-vinegar'

" Asynchronous file linter
Plug 'w0rp/ale'
let g:ale_lint_delay = 1000
let g:ale_linters = {'javascript': ['flow']}
let g:ale_lint_on_text_changed = 0
let g:ale_fixers = {
\  '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1


" Prolog
Plug 'mxw/vim-prolog'

" Docker
Plug 'ekalinin/Dockerfile.vim'

" HTML
Plug 'mattn/emmet-vim'

" Lorem ipsum
Plug 'vim-scripts/loremipsum'

call plug#end()            " required
