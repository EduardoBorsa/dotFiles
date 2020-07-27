filetype off                  " required
set nocompatible              " be iMproved, required
" set rtp+=~/.config/nvim/bundle/Vundle.vim

call plug#begin("~/.config/nvim/plugged")

"SNIPETS
" For func argument completion
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Automatically imports missing JS dependencies and removes unused ones.
Plug 'karthikv/tradeship-vim'

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
"
" Multiple cursor - just like Atom
Plug 'terryma/vim-multiple-cursors'

" Replace string in files
Plug 'skwp/greplace.vim'

" Collor stuff
Plug 'chriskempson/base16-vim'

" Enalbe Diff Between Folders
Plug 'will133/vim-dirdiff'

" Colors for Vim
Plug 'chrisbra/Colorizer'

" Vue
Plug 'posva/vim-vue'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
set runtimepath+=~/.config/nvim/plugins/deoplete.nvim
let g:deoplete#enable_at_startup = 1
let g:deoplete#custom#option = {}
let g:deoplete#custom#option._ = ['file', 'neosnippet']
let g:deoplete#omni#custom#var = {}
let g:deoplete#omni#custom#var = {}



" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
" Plug 'mhinz/vim-mix-format'
" let g:mix_format_on_save = 0
let g:mix_format_options = '--check-equivalent'

" Phoenix
Plug 'c-brenn/phoenix.vim'
Plug 'tpope/vim-projectionist' " required for some navigation features
Plug 'andyl/vim-projectionist-elixir'

" Ruby
Plug 'ruby-formatter/rufo-vim'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug '/takkii/Jet-black-wings'
" Plug 'davidhalter/jedi-vim'

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

Plug 'ternjs/tern_for_vim', { 'do' : 'npm install' }


Plug 'janko-m/vim-test'
" run tests in neoterm
let g:test#strategy = 'neoterm'
"
" nicer api for neovim terminal
Plug 'kassio/neoterm'

" git support from dat tpope
Plug 'tpope/vim-fugitive'

" " github support from dat tpope
Plug 'tpope/vim-rhubarb'

" visualize your undo tree
Plug 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>


" universal text linking
Plug 'vim-scripts/utl.vim'

" " allow portions of a file to use different syntax
" Plug 'vim-scripts/SyntaxRange'

" " increment dates like other items
" Plug 'tpope/vim-speeddating'


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
\   'elixir':     ['mix_format'],
\   'eelixir':    ['prettier'],
\}
let g:ale_fix_on_save = 1

" Docker
Plug 'ekalinin/Dockerfile.vim'

" HTML
Plug 'mattn/emmet-vim'

" Lorem ipsum
Plug 'vim-scripts/loremipsum'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'

" Pandoc
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-pandoc'

" "Vim Coc
" " Use release branch
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
"
" " Or latest tag
" Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
"
" " Or build from source code by use yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}




" From here
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

let g:deoplete#omni#custom#var = {}
let g:deoplete#omni#custom#var.javascript = [
      \ 'tern#Complete',
      \ 'jspc#omni'
      \]
set completeopt=longest,menuone,preview
let g:deoplete#custom#option = {}
let g:deoplete#custom#option['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
autocmd FileType javascript
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
" let g:SuperTabClosePreviewOnPopupClose = 1
let g:UltiSnipsExpandTrigger="<C-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" let g:ale_elixir_elixir_ls_release    = '/home/dado/programs/elixir-ls/release'
let g:ale_completion_enabled = 1
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_linters_explicit = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
noremap <Leader>ad :ALEGoToDefinition<CR>
nnoremap <leader>af :ALEFix<cr>
noremap <Leader>ar :ALEFindReferences<CR>
"Move between linting errors
nnoremap ]r :ALENextWrap<CR>
nnoremap [r :ALEPreviousWrap<CR>
" To Here
"

Plug 'psf/black'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }
let g:prettier#exec_cmd_path = "/home/dado/.asdf/shims/prettier"
let g:prettier#autoformat = 0

autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.yaml,*.html PrettierAsync
"
" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 70
"
" " number of spaces per indentation level
let g:prettier#config#tab_width = 2


" Python
Plug 'deoplete-plugins/deoplete-jedi'

" SQL Formatter
Plug 'b4b4r07/vim-sqlfmt'

" Erlang Runtime
Plug 'vim-erlang/vim-erlang-tags'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-skeletons'


" Language client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

let g:LanguageClient_serverCommands = {
    \ 'ruby': ['~/.asdf/shims/solargraph', 'stdio'],
    \ }
call plug#end()            " required

let g:hot_reload_on_save=1
" let g:prettier#config#parser = 'babylon'
let g:UltiSnipsJumpForwardTrigger='<tab>'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
