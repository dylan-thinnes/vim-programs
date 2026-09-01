"q: mzyiW`z@"
"l: @q:sleep 10m@l
"s: @q@s
"t: :call Trace()@q:sleep 3m@t
"y: :call Trace()@q@y

"set colorcolumn=3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99,102,105,108,111,114,117,120,123,126,129,132,135,138,141,144,147,150,153,156,159,162,165,168,171,174,177,180,183,186,189,192,195,198,201,204,207,210,213,216,219,222,225,228,231,234,237,240,243,246,249,252,255,258,261,264,267,270,273,276,279,282,285,288,291,294,297,300,303,306,309,312,315,318,321,324,327,330,333,336,339,342,345,348,351,354,357,360
colorscheme koehler
highlight MyGroupD guifg=#000000 guibg=#88FF88
highlight MyGroupC guifg=#000000 guibg=#00FF00
highlight MyGroupB guibg=#FF0000
highlight MyGroupA guibg=#8888FF
call clearmatches()
call matchadd("MyGroupA", " 00*\\>")
call matchadd("MyGroupB", " 11*\\>")
call matchadd("MyGroupC", " 22*\\>")
let g:trace = []
function! Trace() abort
  let g:trace = [[line("."), col(".")]] + g:trace[:3]
  call clearmatches()
  call matchadd("MyGroupA", " 00*\\>")
  call matchadd("MyGroupB", " 11*\\>")
  call matchadd("MyGroupC", " 22*\\>")
  call matchaddpos("MyGroupD", g:trace)
endfunction
set laststatus=0
set cmdheight=0
