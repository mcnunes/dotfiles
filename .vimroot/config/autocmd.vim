""" autocmd
autocmd FileType js setlocal shiftwidth=2  softtabstop=2
autocmd FileType json setlocal shiftwidth=2  softtabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType cpp setlocal expandtab shiftwidth=2 tabstop=2 nu 
autocmd FileType perl setlocal expandtab shiftwidth=4 tabstop=4 nu
autocmd FileType ruby setlocal expandtab shiftwidth=4 tabstop=4 nu
autocmd FileType txt setlocal expandtab shiftwidth=4 tabstop=4 setlocal textwidth=79
autocmd FileType python setlocal textwidth=79 tabstop=4 shiftwidth=4 nu expandtab foldmethod=indent foldlevel=99 softtabstop=4

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
