"echo ">^.^<"        " 打印ASCII字符喵

" 禁止使用方向键
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
imap <Left> <Nop>
imap <Right> <Nop>
imap <Up> <Nop>
imap <Down> <Nop>
" Switch buffers
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
" 基础设置
set nocompatible     " be iMproved, required
set mouse=a          " 鼠标模式
set laststatus=2
set number           " 显示行号
set hlsearch         " 高亮所有匹配字符串
filetype plugin on
set pastetoggle=<F9> " turn off automatic indentation
syntax enable
"set background=dark " colorscheme solarized
set sw=4  " 默认4空格缩进
set ts=4  " TAB字符占4空格位置
set expandtab  " 空格替换 TAB
set autoindent
set t_Co=256
"set foldmethod=syntax         " 使用语法高亮定义代码折叠
set colorcolumn=81             " 设置超过80长度提示
let g:python_highlight_all = 1 " 使用增强的 python 语法高亮的所有功能

" 用空格键来开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" 自动跳转上次光标位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Quickly Run
nnoremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ % -o /tmp/%< -lm"
		exec "!time /tmp/%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o /tmp/%<"
		exec "!time /tmp/%<"
	elseif &filetype == 'rs'
		exec "!rustc % -o /tmp/%<"
		exec "!time /tmp/%<"
	elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python3 \'%\'"
	elseif &filetype == 'html'
		exec "!firefox % &"
	elseif &filetype == 'go'
		exec "!time go run %"
	elseif &filetype == 'mkd'
		exec "!~/.vim/markdown.pl % > %.html &"
		exec "!firefox-developer-edition %.html &"
	endif
endfunc
