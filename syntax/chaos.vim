" Vim syntax file
" Language: Chaos
" Maintainer: Chaos Language Development Authority
" Author: Noah Altunian
" URL: https://github.com/chaos-lang/chaos.vim
" Latest Revision: 2 Mar 2021
" Version: 0.0.1

" Exit if a syntax file has already been loaded
if exists("b:current_syntax")
    finish
endif



"""""""""""""""""""""""""
" Syntax Keyword
"""""""""""""""""""""""""

" Keywords
syntax keyword chaosKeywords
            \ exit quit print del return times do
            \ end foreach as def and or not default
            \ echo import from break continue 

" Literals
syntax keyword chaosLiterals
            \ true false null void nan inf

" Types
syntax keyword chaosTypes
            \ bool num str list dict any

" Built-ins
syntax keyword chaosBuiltIns
            \ INFINITE pretty symbol_table function_table


"""""""""""""""""""""""""
" Syntax Keyword End
"""""""""""""""""""""""""



"""""""""""""""""""""""""
" Syntax Match
"""""""""""""""""""""""""

" Operatiors
syntax match chaosOperator display "\V[-+/%=><]"

" Numbers
syntax match chaosNumbers display "\d\+\(.\d\+\)\?"

"""""""""""""""""""""""""
" End Syntax Match
"""""""""""""""""""""""""



"""""""""""""""""""""""""
" Syntax Region
"""""""""""""""""""""""""

" Blocks
syntax region chaosBlock
            \ start="{"
            \ end="}"
            \ transparent fold

" Comments
syntax region chaosCommentLine
            \ start="//"
            \ end="$"

"""""""""""""""""""""""""
" End Syntax Region
"""""""""""""""""""""""""



"""""""""""""""""""""""""
" Highlight
"""""""""""""""""""""""""


"""""""""""""""""""""""""
" End Highlight
"""""""""""""""""""""""""



let b:current_syntax = "chaos"
