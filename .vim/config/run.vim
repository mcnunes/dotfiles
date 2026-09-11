""" autocmd
autocmd FileType sh setlocal shiftwidth=4  softtabstop=4
autocmd FileType sql setlocal shiftwidth=4  softtabstop=4
autocmd FileType js setlocal shiftwidth=2  softtabstop=2
autocmd FileType json setlocal shiftwidth=2  softtabstop=2 filetype=json foldmethod=syntax
autocmd FileType html setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType php setlocal expandtab shiftwidth=4 tabstop=4
autocmd FileType go setlocal nu expandtab cindent shiftwidth=8 tabstop=8 textwidth=79 
autocmd FileType cpp setlocal expandtab shiftwidth=2 tabstop=2 nu 
autocmd FileType java setlocal expandtab shiftwidth=2 tabstop=2 nu textwidth=79
autocmd FileType ruby setlocal expandtab shiftwidth=4 tabstop=4 nu
autocmd FileType txt setlocal expandtab shiftwidth=4 tabstop=4 textwidth=79

autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


runtime ftplugin/man.vim
