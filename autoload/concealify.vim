" thanks to lambdify vim plugin. it's a good point to start with

function! concealify#concealify(type_name, new_type, keyword, u_char)
    " Conceal feature required to continue (vim ≥ 7.3)
    if !has('conceal')
        finish
    endif

    " Conceal 'function' with a lambda character
    execute "syntax keyword " a:new_type a:keyword " conceal cchar=" a:u_char

    " Link up syntax
    execute "hi link " a:new_type a:type_name
    execute "hi! link Conceal " a:type_name

endf

function! concealify#concealify_match(type_name, new_type, pattern, u_char)
    " Conceal feature required to continue (vim ≥ 7.3)
    if !has('conceal')
        finish
    endif

    " Conceal 'function' with a lambda character
    execute "syntax match " a:new_type a:pattern "conceal cchar=" a:u_char

    " Link up syntax
    execute "hi link " a:new_type a:type_name
    execute "hi! link Conceal " a:type_name

endf
