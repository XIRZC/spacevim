function! myspacevim#before() abort
  " vim setting
  set wrap
  set clipboard^=unnamed,unnamedplus
  noremap J 5j
  noremap K 5k
  noremap H 8h
  noremap L 8l
  noremap Q :q<CR>
  noremap W :w<CR>

  " attributes setting
  let g:mapleader = ','
  let g:timeoutlen = 100
  endfunction

function! myspacevim#after() abort

endfunction

