"" some defaults
augroup py_fmt
        autocmd!
        autocmd FileType python setlocal textwidth=79 tabstop=4 shiftwidth=4 
        autocmd FileType python setlocal foldmethod=indent foldlevel=0 foldnestmax=2
        autocmd FileType python setlocal expandtab cursorline softtabstop=4
        autocmd FileType python setlocal nu encoding=utf-8
augroup END

let python_highlight_all = 1 

highlight ExtraWhitespace ctermbg=red guibg=red
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match ExtraWhitespace /\s\+$/

" pydoc3
nnoremap <buffer> H :<C-u>execute "!pydoc3 " . expand("<cword>")<CR>

" black
"augroup black_on_save
"        autocmd!
"        autocmd BufWritePre *.py Black
"augroup end

" isort
let g:vim_isort_python_version = 'python3'

augroup isort_on_save
        autocmd!
        autocmd BufWritePre *.py Isort
augroup end

" run python file
nmap <buffer> <leader>r <Esc>:w<CR>:!clear;python3 %<CR>

" ale
"let g:ale_completion_enabled = 1
let g:ale_virtualtext_cursor = 'disabled'
"let g:ale_completion_autoimport = 0

" vim-slime
let g:slime_target = "tmux"
