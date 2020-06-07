" 自动启用
let g:indentLine_enabled = 1

" 支持空格缩进代码
set list lcs=tab:\|\ 

" 更改缩进字符
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" 引号隐藏
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2

" 设置颜色
let g:indentLine_setColors = 0
" Vim
let g:indentLine_color_term = 239
" GVim
let g:indentLine_color_gui = '#A4E57E'
" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'
