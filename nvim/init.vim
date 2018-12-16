" My vims configs files
source ~/.config/nvim/my_vim_configs/mappings.vim
source ~/.config/nvim/my_vim_configs/functions.vim
source ~/.config/nvim/my_vim_configs/general_vim_config.vim
source ~/.config/nvim/my_vim_configs/vim_plug_plugins.vim

" FZF stuff
set rtp+=~/.fzf

" Elixir format config
let g:mix_format_on_save = 1

filetype plugin indent on    " required
syntax on
filetype plugin on
filetype indent on

set autoindent
" setlocal spell spelllang=en_us
set nospell
set complete+=kspell

augroup elm
  autocmd!
  autocmd BufNewFile,BufRead *.elm setlocal tabstop=4
  autocmd BufNewFile,BufRead *.elm setlocal shiftwidth=4
  autocmd BufNewFile,BufRead *.elm setlocal softtabstop=4
augroup END

augroup markdown
  autocmd!
  autocmd FileType markdown setlocal textwidth=100
  autocmd FileType markdown setlocal formatoptions=tcrq
  autocmd FileType markdown setlocal spell spelllang=en
augroup END

""""" End Filetypes ====================

""""" Normalization ====================
" Delete trailing white space on save
func! DeleteTrailingWS()
  exe 'normal mz'
  %s/\s\+$//ge
  exe 'normal `z'
endfunc

augroup whitespace
  autocmd BufWrite * silent call DeleteTrailingWS()
augroup END

" NO ARROW KEYS COME ON
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

" Keep the cursor in place while joining lines
nnoremap J mzJ`z
" Makes foo-bar considered one word
set iskeyword+=-
au FileType gitcommit,gitrebase let g:gutentags_enabled=0
au FileType perl set filetype=prolog


" NeoTerm config
let g:neoterm_default_mod='tab'
" let g:neoterm_split_on_tnew=1
let g:neoterm_autojump=1

" Ruby format
" Enable rufo (Ruby FOrmat)
let g:rufo_auto_formatting = 1
au FileType gitcommit,gitrebase let g:gutentags_enabled=0
fun! AutoCmd_ERB()
        "do some other settings/mappings for your ERB, if you have
        "......
        "the customized surrounding :
        let b:surround_{char2nr('=')} = "<%= \r %>"
        let b:surround_{char2nr('-')} = "<% \r %>"
endf
autocmd FileType html.erb call AutoCmd_ERB()


" Change emmet
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_expandabbr_key = '<C-t>'
inoremap <C-e>e <esc>:call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>wwi
nnoremap <C-e>e :call emmet#expandAbbr(0,"")<cr>h:call emmet#splitJoinTag()<cr>ww
