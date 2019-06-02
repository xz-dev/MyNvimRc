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
let g:neoformat_python_autopep8 = {
	\ 'exe': 'autopep8',
	\ 'args': ['-s 4', '-E'],
	\ 'stdin': 1,
	\ 'env': ["DEBUG=1"],
	\ 'valid_exit_codes': [0, 23],
	\ 'no_append': 1,
	\ }

" 配置启用的格式化程序
let g:neoformat_enabled_python = ['autopep8', 'yapf', 'docformatter']

" C
let g:neoformat_c_uncrustify = {
	\ 'exe': 'uncrustify',
	\ 'args': ['-q', '-l C'],
	\ 'stdin': 1,
	\ 'env': ["DEBUG=1"],
	\ 'valid_exit_codes': [0, 23],
	\ 'no_append': 1,
	\ }

let g:neoformat_enabled_c = ['uncrustify']
