" nnoremap <C-I> :execute "vsplit" fnameescape(resolve("~/notebook"))<CR>

"easy acess of the vimrc file and how to source it
nmap <leader>vr :vsp $MYVIMRC<cr>
nmap <leader>vm :vsp ~/.config/nvim/mappings.vim<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>ffp :echo expand('%:p')<cr>

nmap <leader>td :pu=strftime('%c')<cr>

nmap <C-a>v :AV <cr>
nmap <C-a>s :AS <cr>
nmap <C-a>a :A <cr>

" --------------

" Calls fuzzy finder "
" nnoremap <leader>f : :FZF<cr>
" Stops the Highlighting "
nnoremap <leader>h : nohlsearch<cr>

" Calls Prettier "
nnoremap <leader>p :Prettier<cr>
autocmd FileType python nnoremap <leader>p :Black<cr>

" Elixi format commands
nnoremap <leader>mf : :MixFormat<cr>
nnoremap <leader>mdf : :MixFormatDiff<cr>

"Testing
nnoremap <leader>tt : :TestNearest<cr>
nnoremap <leader>tf : :TestFile<cr>
nnoremap <leader>ta : :TestSuite<cr>
nnoremap <leader>tl : :TestLast<cr>
nnoremap <leader>te : :T exit<cr>


imap lorem1 <left><C-o>:Loremipsum! 1 <cr>
imap lorem2 <left><C-o>:Loremipsum! 2 <cr>
imap lorem3 <left><C-o>:Loremipsum! 3 <cr>
imap lorem4 <left><C-o>:Loremipsum! 4 <cr>
imap lorem5 <left><C-o>:Loremipsum! 5 <cr>
imap lorem6 <left><C-o>:Loremipsum! 6 <cr>
imap lorem7 <left><C-o>:Loremipsum! 7 <cr>
imap lorem9 <left><C-o>:Loremipsum! 9 <cr>
imap lorem0 <left><C-o>:Loremipsum! 50 <cr>
imap 'e é
