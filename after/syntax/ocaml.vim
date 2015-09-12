" ocaml.vim - vim conceal enhanvement for ocaml
" Maintainer:   Paul Meng <mno2.csie@gmail.com>
" Version:      1.0

" Install in ~/.vim/after/syntax (Linux/Mac OS X/BSD) or ~/vimfiles/after/syntax folder (Windows) 
"
" :set foldmethod=marker
if exists('g:no_ocaml_conceal') || !has('conceal') || &enc != 'utf-8'
    finish
endif

" vim: set fenc=utf-8:
syntax keyword ocamlNiceOperator fun conceal cchar=λ
syntax keyword ocamlNiceOperator function conceal cchar=λ
syntax keyword ocamlNiceOperator rec conceal cchar=Γ
syntax match ocamlNiceOperator "<-" conceal cchar=←
syntax match ocamlNiceOperator "->" conceal cchar=→
syntax match ocamlNiceOperator "\<sqrt\>" conceal cchar=√ 
syntax match ocamlNiceOperator "\<==\>" conceal cchar=≡
syntax match ocamlNiceOperator "<>" conceal cchar=≠
syntax match ocamlNiceOperator "||" conceal cchar=∨
syntax match ocamlNiceOperator "@" conceal cchar=⊕
syntax match ocamlNiceOperator "*" conceal cchar=×
syntax match ocamlNiceOperator ";;" conceal cchar=♢
syntax match ocamlNiceOperator "<=\ze[^<]" conceal cchar=≲
syntax match ocamlNiceOperator ">=\ze[^>]" conceal cchar=≳
syntax match ocamlNiceOperator "=>" conceal cchar=⇒
syntax match ocamlNiceOperator "\:\:" conceal cchar=∷
syntax match ocamlNiceOperator "++" conceal cchar=⧺
syntax match ocamlNiceOperator "\<for_all\>" conceal cchar=∀

hi link ocamlNiceOperator Operator
hi! link Conceal Operator

setlocal conceallevel=1
setlocal concealcursor=cn
