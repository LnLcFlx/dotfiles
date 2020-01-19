" Original file is https://github.com/wjakob/wjakob.vim/blob/master/after/syntax/tex.vim

if has('conceal')
    syn match texMathSymbol '\\cross' contained conceal cchar=⨯
    syn match texMathSymbol '\\colon' contained conceal cchar=:
    syn match texMathSymbol '\\R' contained conceal cchar=ℝ
    syn match texMathSymbol '\\N' contained conceal cchar=ℕ
    syn match texMathSymbol '\\Z' contained conceal cchar=ℤ
    syn match texMathSymbol '\\C' contained conceal cchar=ℂ
    syn match texMathSymbol '\\Q' contained conceal cchar=ℚ
    syn match texMathSymbol '\\infty' contained conceal cchar=∞
endif
