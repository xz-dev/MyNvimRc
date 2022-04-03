nnoremap <C-l> :Neoformat<CR>
" 运行所有启用的格式化程序(默认情况下，Neoformat在第一个格式化程序成功后停止)
"let g:neoformat_run_all_formatters = 1

" 找不到文件类型时启用基本格式。默认情况下禁用。

" 启用对齐
let g:neoformat_basic_format_align = 1

" 启用制表符到空格转换，
let g:neoformat_basic_format_retab = 1

" 启用尾随空格的修剪，
let g:neoformat_basic_format_trim = 1

" 保存代码时自动格式化
"augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
"augroup END

" Python
" 配置启用的格式化程序
let g:neoformat_enabled_python = ['yapf']
let g:neoformat_python_yapf = {
	\ 'exe': 'yapf',
	\ 'stdin': 1,
	\ 'args': ['--style pep8'],
	\ 'valid_exit_codes': [0],
	\ 'no_append': 1,
	\ }

" C
let g:neoformat_enabled_c = ['uncrustify']
let g:neoformat_c_uncrustify = {
	\ 'exe': 'uncrustify',
	\ 'args': ['-l C', '-c ~/.config/nvim/rc/plugin/neoformat/linux-indent.cfg', '-q', '-f'],
	\ }
