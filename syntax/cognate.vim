" Vim syntax file
" Language: Cognate
" Maintainer: Finn Barber
" Latest Revision: Wed 19 Jan 2022

setl commentstring=~~%s
setl isk=38,42,43,45,47-58,60-62,64-90,97-122,_

hi def link cogInformal   Normal
hi def link cogOperator   Operator
hi def link cogBrace      Bracket
hi def link cogFunction   Function
hi def link cogIO         Special
hi def link cogNumber     Number
hi def link cogDecl       Constant
hi def link cogBoolean    Boolean
hi def link cogControl    Conditional
hi def link cogComment    Comment
hi def link cogTodo       Todo
hi def link cogString     String
hi def link cogDelimiter  Normal
hi def link cogSymbol     Keyword
hi def link cogImported   Function
hi def link cogInvalid    Error
hi def link cogWhiteSpace Whitespace

" Invalid
syn match cogInvalid '.'
" Whitespace
syn match cogWhitespace '\s'
" Informal
syn match cogInformal '\<[a-z][a-z0-9?!\-']*'
" Function
syn match cogFunction '\<\([A-Za-z0-9?!\-]\+:\)\?[A-Z][A-Za-z0-9?!\-]*'
" Symbols
syn match cogOperator  '\(\*\|/\|+\|-\|==\|!=\|>=\|<=\|>\|<\)' " Hate regex
syn match cogDelimiter ';'
" Brackets
syn match cogBrace '(\|)'
" Numbers
syn match cogNumber '\<-\?\d\+\.\?\d*[a-z]*'
" Symbol
syn match cogSymbol '\\\<[A-Za-z0-9?!\-]\+'
" Keywords
syn match cogDecl '\<\([SL][eE][tT]\|D[eE][fF]\|T[yY][pP][eE]\)\>'
syn match cogIO   '\<P\([rR][iI][nN]\|[uU]\)[tT][sS]\?\>'
syn match cogBoolean '\<\(T[rR][uU]\|F[aA][lL][sS]\)[eE]\>'
syn match cogControl '\<\(C[aA][sS][eE]\|I[fF]\|D[oO]\|W[hH][iI][lL][eE]\|L[oO][oO][pP]\|F[oO][rR]\)\>'
" Comments
syn region cogComment start="\~"   end="\~" contains=cogTodo
syn region cogComment start="\~\~" end="$"  contains=cogTodo
" Todo
syn keyword cogTodo contained TODO FIXME
" Strings
syn region cogString start="\"" skip="\\\"" end="\""
