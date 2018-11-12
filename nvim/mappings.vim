function! FixLastMisspelledWord()
	normal! mm[s1z=`m
endfunction
nnoremap <leader>zp :call FixLastMisspelledWord()<cr>

nnoremap <C-I> :execute "vsplit" fnameescape(resolve("~/notebook"))<CR>

"easy acess of the vimrc file and how to source it
nmap <leader>vr :vsp $MYVIMRC<cr>
nmap <leader>vm :vsp ~/.config/nvim/mappings.vim<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>ffp :echo expand('%:p')<cr>

nmap <leader>on :vsp ~/programs/notebooks/<cr>

nmap <C-a>v :AV <cr>
nmap <C-a>a :A <cr>

function! MoveLineUp()
  normal! ddkkp
endfunction

nnoremap <leader>mu :call MoveLineUp()<cr>
nnoremap <leader>md :normal! ddp<cr>

function! IdentFile()
  normal! mmgg=G`m
endfunction
nnoremap <leader>if :call IdentFile()<cr>

function! DeleteEverythingInFile()
  normal! ggdG
endfunction
nnoremap <leader>de :call DeleteEverythingInFile()<cr>

function! PdfUpdate()
  let currentFilePath = expand('%:p')
  silent execute "! md2pdf " currentFilePath
  silent execute "! pkill -HUP mupdf"
endfunction
nnoremap <leader>pu :call PdfUpdate()<cr>

function! PdfOpen()
  let folderPath = expand('%:p:h') . "/"
  let pdfFilePath = folderPath . expand('%:t:r') . ".pdf"
  silent execute "! mupdf " pdfFilePath . " &"
endfunction
nnoremap <leader>po :call PdfOpen()<cr>

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

" iabbrev div <div><CR></div><UP><TAB>
" cabbrev vim_config ~/.config/nvim/mappings.vim
" iabbrev <expr> TS strftime("%c")
" imap wwwww http://bla.com
