function! FixLastMisspelledWord()
  normal! mm[s1z=`m
endfunction
nnoremap <leader>zp :call FixLastMisspelledWord()<cr>

function! MoveLineUp()
  normal! ddkkp
endfunction

nnoremap <leader>mu :call MoveLineUp()<cr>
nnoremap <leader>md :normal! ddp<cr>
" nnoremap <leader>bft :normal! ^vf>dO<esc>p<cr>
" nnoremap <leader>bst :normal! ^v$F<hdO<esc>p<cr>

function! BreakTag()
  normal! ^f>a<cr>
endfunction
nnoremap <leader>bft :call BreakTag()<cr>

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

function! FixAllFilesEslint()
  silent execute "!yarn run lint --fix"
endfunction
nnoremap <leader>la :call FixAllFilesEslint()<cr>

function! FixCurrentFilesEslint()
  let filePath = expand('%:p') . "/"
  silent execute "!npx vue-cli-service lint" filePath
endfunction
nnoremap <leader>lf :call FixCurrentFilesEslint()<cr>
