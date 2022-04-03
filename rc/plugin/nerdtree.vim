" CTRL+n打开NERDTree
map <C-n> :NERDTreeToggle<CR>
" 显示行号
let NERDTreeShowLineNumbers=1
" 设置宽度
let NERDTreeAutoCenter=1
let NERDTreeWinSize=45
" 是否显示隐藏文件
let NERDTreeShowHidden=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略特定文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
