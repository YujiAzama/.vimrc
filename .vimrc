" Line number
set number
" Tab convert
set expandtab
" Tab stop
set tabstop=4

function! s:RestoreCursorPostion()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction
" ファイルを開いた時に、以前のカーソル位置を復元する
augroup vimrc_restore_cursor_position
  autocmd!
  autocmd BufWinEnter * call s:RestoreCursorPostion()
augroup END
