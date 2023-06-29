" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" fcitx 自动切换
"Plug 'vim-scripts/fcitx.vim'
" ibus 模式自动切换
"Plug 'h-youhei/vim-ibus'
"source ~/.config/nvim/rc/plugin/vim-ibus.vim

" 界面显示
" 主题
Plug 'morhetz/gruvbox'
autocmd vimenter * colorscheme gruvbox

" 曾经使用的主题
"Plug 'joshdick/onedark.vim'
"source ~/.config/nvim/rc/plugin/onedark.vim.vim
"Plug 'altercation/vim-colors-solarized'
"Plug 'sheerun/vim-polyglot'
"source ~/.config/nvim/rc/plugin/vim-colors-solarized.vim

Plug 'vim-airline/vim-airline'
source ~/.config/nvim/rc/plugin/vim-airline.vim

Plug 'vim-airline/vim-airline-themes'

" 彩色括号
Plug 'luochen1990/rainbow'
source ~/.config/nvim/rc/plugin/rainbow.vim

" 缩进提示
Plug 'Yggdroot/indentLine'
source ~/.config/nvim/rc/plugin/indentLine.vim

" 日常

" MarkDown预览
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
source ~/.config/nvim/rc/plugin/markdown-preview.vim

" 强迫症修复

" Tab 排序格式化
Plug 'godlygeek/tabular'

" 行末空格修复
Plug 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

" 工作环境优化(通用)

" fzf 搜索插件(已经有CocList了，先试试那个)
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

" 文件树
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
source ~/.config/nvim/rc/plugin/nerdtree.vim

" 括号自动补全
Plug 'jiangmiao/auto-pairs'
source ~/.config/nvim/rc/plugin/auto-pairs.vim

" 编程语言语法相关
" 语法补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}
source ~/.config/nvim/rc/plugin/coc.nvim/coc.nvim.vim

" Python IDE
"Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
"source ~/.config/nvim/rc/plugin/pymode.vim

" Python jedi
Plug 'davidhalter/jedi-vim'

" Other Code File
Plug 'sheerun/vim-polyglot'

" rust.vim 
Plug 'rust-lang/rust.vim'

" Vim-GO 插件
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" 代码格式化
Plug 'sbdchd/neoformat'
source ~/.config/nvim/rc/plugin/neoformat/neoformat.vim

" fzf.vim
Plug 'junegunn/fzf.vim'
source ~/.config/nvim/rc/plugin/fzf.vim

call plug#end()
