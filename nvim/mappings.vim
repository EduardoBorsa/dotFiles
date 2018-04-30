function! Cocozao()
	normal! mm[s1z=`m
endfunction
nnoremap <leader>zp :call Cocozao()<cr>


"easy acess of the vimrc file and how to source it
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>

function! MoveLineUp()
  normal! ddkkp
endfunction

nnoremap <leader>mu :call MoveLineUp()<cr>
nnoremap <leader>md :normal! ddp<cr>

" Calls fuzzy finder "
nnoremap <leader>f : :FZF<cr>
" Stops the Highlighting "
nnoremap <leader>h : nohlsearch<cr>
" Calls Prettier "
nnoremap <leader>p : :Prettier<cr>
" Elixi format commands
nnoremap <leader>mf : :MixFormat<cr>
nnoremap <leader>mdf : :MixFormatDiff<cr>
"Testing
nnoremap <leader>tt : :TestNearest<cr>
nnoremap <leader>tf : :TestFile<cr>
nnoremap <leader>ta : :TestSuite<cr>
nnoremap <leader>tl : :TestLast<cr>

" iabbrev div <div><CR></div><UP><TAB>
" cabbrev vim_config ~/.config/nvim/mappings.vim
" iabbrev <expr> TS strftime("%c")
" imap wwwww http://bla.com
