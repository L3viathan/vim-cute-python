" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear pythonOperator

syntax keyword pyNiceOperator or conceal cchar=∨
syntax keyword pyNiceOperator and conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match pyNiceOperator "\<not " conceal cchar=¬
syntax match pyNiceOperator "\<is not\>" conceal cchar=¬
syntax match pyNiceOperator "\<not in\>" conceal cchar=∉
syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyNiceOperator "\<xf\>" conceal cchar=≢

syntax keyword pyNiceOperator sum conceal cchar=∑
" syntax keyword pyNiceOperator random conceal cchar=🎲
" syntax keyword pyNiceOperator time conceal cchar=⏰
" syntax keyword pyNiceOperator sleep conceal cchar=💤
" syntax keyword pyNiceOperator reversed conceal cchar=⤾
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π
syntax match pyNiceKeyword "\<self\>" conceal cchar=𝒮

syntax keyword pyNiceStatement lambda conceal cchar=λ
syntax keyword pyNiceStatement for conceal cchar=∀
syntax keyword pyNiceStatement if conceal cchar=?
syntax keyword pyNiceStatement elif conceal cchar=⁈
syntax keyword pyNiceStatement else conceal cchar=!
syntax keyword pyNiceStatement while conceal cchar=𝄆
syntax keyword pyNiceStatement in conceal cchar=∈
syntax keyword pyNiceStatement def conceal cchar=𝓕
syntax keyword pyNiceStatement class conceal cchar=𝓒
syntax keyword pyNiceStatement continue conceal cchar=𝄇
syntax keyword pyNiceStatement break conceal cchar=⎋
syntax keyword pyNiceStatement return conceal cchar=⏎
syntax keyword pyNiceStatement yield conceal cchar=↩︎
syntax keyword pyNiceStatement raise conceal cchar=☝︎
syntax keyword pyNiceStatement try conceal cchar=✌︎
syntax keyword pyNiceStatement except conceal cchar=☂
syntax keyword pyNiceStatement pass conceal cchar=⋯
syntax keyword pyNiceStatement with conceal cchar=𝕎
syntax keyword pyNiceStatement as conceal cchar=✍
syntax keyword pyNiceStatement import conceal cchar=⇢
syntax keyword pyNiceStatement from conceal cchar=⇠
syntax keyword pyNiceKeyword True conceal cchar=𝕋
syntax keyword pyNiceKeyword False conceal cchar=𝔽
syntax keyword pyNiceKeyword None conceal cchar=∅

syntax match pyNiceSymbol "\<alpha\>" conceal cchar=𝛼
syntax match pyNiceSymbol "\<beta\>" conceal cchar=𝛽
syntax match pyNiceSymbol "\<gamma\>" conceal cchar=𝛾
syntax match pyNiceSymbol "\<delta\>" conceal cchar=𝛿
syntax match pyNiceSymbol "\<epsilon\>" conceal cchar=𝜀
syntax match pyNiceSymbol "\<zeta\>" conceal cchar=𝜁
syntax match pyNiceSymbol "\<eta\>" conceal cchar=𝜂
syntax match pyNiceSymbol "\<theta\>" conceal cchar=𝜃
syntax match pyNiceSymbol "\<iota\>" conceal cchar=𝜄
syntax match pyNiceSymbol "\<kappa\>" conceal cchar=𝜅
syntax match pyNiceSymbol "\<my\>" conceal cchar=𝜇
syntax match pyNiceSymbol "\<ny\>" conceal cchar=𝜈
syntax match pyNiceSymbol "\<xi\>" conceal cchar=𝜉
syntax match pyNiceSymbol "\<omicron\>" conceal cchar=𝜊
syntax match pyNiceSymbol "\<rho\>" conceal cchar=𝜌
syntax match pyNiceSymbol "\<sigma\>" conceal cchar=𝜎
syntax match pyNiceSymbol "\<tau\>" conceal cchar=𝜏
syntax match pyNiceSymbol "\<ypsilon\>" conceal cchar=𝜐
syntax match pyNiceSymbol "\<phi\>" conceal cchar=𝜑
syntax match pyNiceSymbol "\<chi\>" conceal cchar=𝜒
syntax match pyNiceSymbol "\<psi\>" conceal cchar=𝜓
syntax match pyNiceSymbol "\<omega\>" conceal cchar=𝜔
syntax match pyNiceSymbol "\\.\\.\\." conceal cchar=…
" sadly, conceal all has one highlighting. So we can't have it look okay
" syntax match pyNiceUnder "__" conceal cchar=＿

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi link pyNiceSymbol Function
" hi! link Conceal Operator

setlocal conceallevel=1
