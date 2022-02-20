function! myspacevim#before() abort
  " vim setting
  set wrap
  set clipboard^=unnamed,unnamedplus
  nmap J <c-d>
  nmap K <c-u>
  noremap H B
  noremap L W
  noremap Q :q<CR>
  noremap W :w<CR>

  " attributes setting
  let g:mapleader = ','
  let g:SpaceVim_timeoutlen = 100
  endfunction

function! myspacevim#after() abort

endfunction

