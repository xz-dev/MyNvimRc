" 如果未设置隐藏，TextEdit可能会失败。
set hidden

" 某些服务器存在备份文件问题，请参阅＃649
set nobackup
set nowritebackup

" 更好地显示消息
" 设置cmdheight = 2
set cmdheight=1

" CursorHold和CursorHoldI的更新时间更短
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" 总是显示signcolumns
set signcolumn=yes

" 使用 TAB 触发完成前面的字符并导航。
" 使用命令 ':verbose imap <tab>' 以确保 TAB 不被其他插件映射。
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 使用 <c-space> 触发完成。
inoremap <silent><expr> <c-space> coc#refresh()

" 使用 <cr> 确认完成，'<C-g>u' 表示在当前位置断开撤销链。
" Coc只做片段和附加编辑确认。
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" 使用 '[c' 和 ']c' 进行导航诊断
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" 为 getos 重新映射密钥
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" 使用K在预览窗口中显示文档
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" 在 CursorHold 上的光标下高亮符号
autocmd CursorHold * silent call CocActionAsync('highlight')

" 重新映射以重命名当前单词
nmap <leader>rn <Plug>(coc-rename)

" 重新映射以格式化选定区域
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " 设置 formatexpr 指定的文件类型。
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  " 更新跳转占位符的签名帮助
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" 重新映射选择区域的代码操作，例如：当前段落的 '<leader>app'
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
" 重新映射以执行当前行的代码操作
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
" 修复当前行的自动修复问题
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" coc-highlight
autocmd CursorHold * silent call CocActionAsync('highlight')

" Add diagnostic info for https://github.com/itchyny/lightline.vim
" 为 https://github.com/itchyny/lightline.vim 添加诊断信息
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
