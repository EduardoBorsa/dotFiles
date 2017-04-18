function! Cocozao()
	normal! mm[s1z=`m
endfunction
nnoremap <leader>zp :call Cocozao()<cr>

nnoremap <leader>f : :FZF<cr>
nnoremap <leader>h : nohlsearch<cr>

"easy acess of the vimrc file and how to source it
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>


