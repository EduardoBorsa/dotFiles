" Tag
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

function! FixAllFilesEslint()
  silent execute "!yarn run lint --fix"
endfunction
nnoremap <leader>la :call FixAllFilesEslint()<cr>

function! FixCurrentFilesEslint()
  let filePath = expand('%:p') . "/"
  silent execute "!npx vue-cli-service lint" filePath
endfunction
nnoremap <leader>lf :call FixCurrentFilesEslint()<cr>
