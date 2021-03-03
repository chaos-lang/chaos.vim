" Vim ftdetect file
" Language: Chaos
" Maintainer: Chaos Language Development Authority
" Author: Noah Altunian
" URL: https://github.com/chaos-lang/chaos.vim
" Latest Revision: 3 Mar 2021
" Version: 0.0.2

autocmd BufNewFile,BufRead *.kaos set filetype=chaos

augroup chaos_autocmd
    autocmd!
    autocmd FileType kaos setlocal autoindent
    autocmd FileType kaos setlocal formatoptions=tcq2l
    autocmd FileType kaos setlocal foldmethod=syntax
augroup END
