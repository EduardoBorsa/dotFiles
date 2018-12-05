nnoremap <C-I> :execute "vsplit" fnameescape(resolve("~/notebook"))<CR>

"easy acess of the vimrc file and how to source it
nmap <leader>vr :vsp $MYVIMRC<cr>
nmap <leader>vm :vsp ~/.config/nvim/mappings.vim<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>ffp :echo expand('%:p')<cr>

nmap <leader>on :vsp ~/programs/notebooks/<cr>

nmap <C-a>v :AV <cr>
nmap <C-a>a :A <cr>

" --------------

" Calls fuzzy finder "
" nnoremap <leader>f : :FZF<cr>
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
nnoremap <leader>te : :T exit<cr>
