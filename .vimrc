"插件列表及其必要配置
"使用vim-plug来管理插件

call plug#begin()
  Plug 'preservim/nerdtree'
	Plug 'sainnhe/sonokai'
	Plug 'mhinz/vim-startify'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tomasr/molokai'
	Plug 'maralla/completor.vim'
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'
  Plug 'ferreum/completor-tmux'
	Plug 'kyouryuukunn/completor-necosyntax'
	Plug 'vhda/verilog_systemverilog.vim'
	Plug 'jmcneal/verilog-support'
call plug#end()

"NERDTree 用来显示文件栏

"vim-airline 用来显示状态栏
let g:airline_theme='dark'

"auto-pairs.vim 用于括号的自动匹配

"NerdCommenter.vim 用于高级注释

"vim-startify 用于开始菜单（好好玩嘿嘿嘿）

"Dracula主题
"packadd! dracula
"syntax enable
"colorscheme dracula

"vim-tokyonight主题
"set termguicolors
"let g:tokyonight_style = 'night'
"let g:tokyonight_enable_italic=1
"colorscheme tokyonight

"ultisnips 用来进行片段补全


"基本配置
"不与vi兼容
set nocompatible

"打开语法高亮
syntax on

"在底部显示模式
set showmode

"命令模式下在底部显示当前指令
set showcmd

"打开鼠标支持
"set mouse=a
"弃用，因为和基于terminal的vim不兼容

"使用utf-8编码
set encoding=utf-8

"启用256色
set t_Co=256


"缩进
"开启文件类型检查，并载入对应的缩进规格
filetype plugin indent on

"使下一行缩进自动跟上一行缩进保持一致
set autoindent

"将tab键固定为2个空格
set tabstop=2
"自动将tab转换为空格
set softtabstop=2

"将>>和<<使用的缩进固定为4个空格
set shiftwidth=4


"外观

"设置字体和大小，适用于GVIM
set guifont=mononoki\ 16
"set linespace=1
"打开行号
set number

"将行号转为相对于当前行的值
"set relativenumber

"光标所在行高亮
set cursorline

"行宽度设置为80字符
set textwidth=80

"自动折行
set wrap

"指定折行处与窗口最右端空出2个字符
set wrapmargin=2

"垂直滚动时，光标距离顶部/底部5行
set scrolloff=5

"始终显示状态栏
set laststatus=2

"在状态栏显示光标的当前位置
set ruler

"主题设置
let g:sonokai_style = 'default'
let g:sonokai_better_performance = 1
colorscheme sonokai
let g:airline_theme = 'sonokai'

"搜索
"光标遇到括号时，另一对自动高亮
set showmatch

"搜索时高亮显示匹配结果
set hlsearch

"输入搜索模式时，每输入一个字符，自动跳转到第一个匹配的结果
set incsearch

"搜索时忽略大小写
"set ignorecase


"编辑
"打开英文单词的拼写检查
"set spell spelllang=en_us

"文件保存时，不创建备份文件
set nobackup

"不创建交换文件
set noswapfile

"文件关闭后仍然保持编辑历史，以供撤销更改使用
set undofile

"设置备份文件/交换文件/编辑历史文件的保存地址
"set backupdir=~/.vim/.backup//
"set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//

"将工作目录自动切换到正在编辑的文件
set autochdir

"关闭错误提示音
set belloff=all

"开启错误视觉提示
"set visualbell

"设置编辑历史的最大步数为1000步
set history=1000

"打开文件监视，在文件发生外部改变时发出提示
set autoread

"使用tab来自动补全vim命令，tab显示匹配项，第二次tab在匹配项目中切换
set wildmenu
set wildmode=longest:list,full
