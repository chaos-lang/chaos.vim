" Vim syntax file
" Language: Chaos
" Maintainer: Chaos Language Development Authority
" Author: Noah Altunian
" URL: https://github.com/chaos-lang/chaos.vim
" Latest Revision: 3 Mar 2021
" Version: 0.0.2

" Exit if a syntax file has already been loaded
if exists("b:current_syntax")
    finish
endif



"""""""""""""""""""""""""
" Syntax Keyword
"""""""""""""""""""""""""

" Booleans
syntax keyword chaosBoolean
            \ true false

" Built-ins
syntax keyword chaosBuiltIns
            \ INFINITE pretty symbol_table function_table

" Keywords
syntax keyword chaosKeywords
            \ exit quit print del return times do
            \ end foreach as def and or not default
            \ echo import from break continue 


" Figure this out later
" Literals
" syntax keyword chaosLiterals
"             \ nan inf

" Null
syntax keyword chaosNull
            \ null

" Types
syntax keyword chaosTypes
            \ bool num str list dict any void

"""""""""""""""""""""""""
" End Syntax Keyword
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
syntax region chaosCommentLineSlash
            \ start="//"
            \ end="$"

syntax region chaosCommentLinePound
            \ start="#"
            \ end="$"

"""""""""""""""""""""""""
" End Syntax Region
"""""""""""""""""""""""""



"""""""""""""""""""""""""
" Highlight
"""""""""""""""""""""""""

" Syntax keyword
highlight default link chaosBoolean  Boolean
highlight default link chaosBuiltIns Statement
highlight default link chaosKeywords Statement
highlight default link chaosNull     Boolean
highlight default link chaosTypes    Type

" Syntax region
highlight default link chaosCommentLineSlash Comment
highlight default link chaosCommentLinePound Comment

"""""""""""""""""""""""""
" End Highlight
"""""""""""""""""""""""""



let b:current_syntax = "chaos"
