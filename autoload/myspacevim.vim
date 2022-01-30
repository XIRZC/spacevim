function! myspacevim#before() abort
  " vim setting
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
  " ==
  " == vimtex
  " ==
  let g:vimwiki_list = [
              \ {
              \ 'path': '~/vikis/notes/wiki',
              \ 'path_html': '~/vikis/notes/docs',
              \ 'name': 'notes',
              \ 'auto_export': 1,
              \ 'auto_toc': 1},
              \ {
              \ 'path': '~/vikis/wiki/wiki',
              \ 'path_html': '~/vikis/wiki/docs',
              \ 'name': 'wiki',
              \ 'auto_export': 1,
              \ 'auto_toc': 1},
              \ ]
  map <leader>wc :VimwikiAll2HTML<CR>
  map <leader>wi gg0<tab><CR>
  map <leader>wt :VimwikiTable<CR>
  map we $8h<CR>
  function! VimwikiFindIncompleteTasks()
    lvimgrep /- \[ \]/ %:p
    lopen
  endfunction
  function! VimwikiFindAllIncompleteTasks()
    VimwikiSearch /- \[ \]/
    lopen
  endfunction
  nmap <Leader>wa :call VimwikiFindAllIncompleteTasks()<CR>
  nmap <Leader>wx :call VimwikiFindIncompleteTasks()<CR>
  endfunction

function! myspacevim#after() abort

endfunction

