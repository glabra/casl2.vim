" Vim syntax file
" Language: CASL II
" Maintainer: Yosuke INOUE
" Latest Revision: 20141030T195948+0900

if exists("b:current_syntax")
    finish
else
    let b:current_syntax = "casl2"
endif

syntax match casl2Comment ';.*$' contains=casl2Todo
syntax keyword casl2Todo TODO FIXME XXX NOTE contained containedin=casl2Comment

syntax match casl2Register 'GR[0-7]' display
"syntax match casl2Delimiter ',' display

syntax match casl2Label '^[A-Z][A-Za-z0-9]\{0,7\}' display skipwhite nextgroup=casl2Instructions
syntax match casl2NoLabel '^\s\+' nextgroup=casl2Instructions

syntax match casl2Constant '=\d\+' display
syntax match casl2Hexadecimal '#\d\+' contains=casl2Address display
syntax match casl2Address '#\d\{4\}' contained containedin=casl2Hexadecimal display
syntax region casl2String oneline start="'" end="'" contained display

syntax keyword casl2Instructions RET NOP START END POP contained
syntax keyword casl2Instructions DS contained skipwhite
syntax keyword casl2Instructions DC contained skipwhite nextgroup=casl2String
syntax keyword casl2Instructions LD ST ADDA SUBA ADDL SUBL AND OR XOR CPA CPL JUMP JPL JMI JNZ JZE JOV CALL SVC contained skipwhite
syntax keyword casl2Instructions LAD SLA SRA SLL SRL PUSH contained skipwhite

highlight def link casl2Address Special
highlight def link casl2Comment Comment
highlight def link casl2Constant Constant
"highlight def link casl2Delimiter Delimiter
highlight def link casl2Hexadecimal Number
highlight def link casl2Instructions Function
highlight def link casl2Label Label
highlight def link casl2Register Special
highlight def link casl2String String
highlight def link casl2Todo Todo
