"" some defaults
augroup c_fmt
        autocmd!
        autocmd FileType c setlocal expandtab shiftwidth=4 tabstop=4 
        autocmd FileType c setlocal nu smartindent textwidth=79 
        autocmd FileType c setlocal noautoindent indentexpr=
        autocmd FileType c setlocal foldmethod=syntax cursorline
        autocmd FileType cpp setlocal expandtab shiftwidth=4 tabstop=4 
        autocmd FileType cpp setlocal nu smartindent textwidth=79      
        autocmd FileType cpp setlocal noautoindent indentexpr=         
        autocmd FileType cpp setlocal foldmethod=syntax cursorline 
augroup END
