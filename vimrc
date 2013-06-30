"=============================================
"Author:hominlinx
"Version:1
"Email:hominlinx@gmail.com
"=============================================

"=============================================
"General 基础设置
"=============================================
set encoding=utf-8
" encoding dectection 
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
set helplang=cn

" enable filetype dectection and ft(filetype) specific plugin/indent
" 文件类型检测/允许加载文件类型插件/为不同类型的文件定义不同的缩进格式
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
set background=dark
colorscheme vividchalk

" 取消备份。
set nobackup
set noswapfile

" 突出显示当前行等 
set cursorcolumn
set cursorline " 突出显示当前行

"- 则点击光标不会换,用于复制
set mouse-=a
set selection=exclusive
set selectmode=mouse,key

"设置文内智能搜索提示
" 高亮search命中的文本。
set hlsearch
" 搜索时忽略大小写
set ignorecase
" 随着键入即时搜索
set incsearch
" 有一个或以上大写字母时仍大小写敏感
set smartcase " ignore case if search pattern is all lowercase, case-sensitive otherwise

" 代码折叠
set foldenable
" 折叠方法
" manual 手工折叠
" indent 使用缩进表示折叠
" expr 使用表达式定义折叠
" syntax 使用语法定义折叠
" diff 对没有更改的文本进行折叠
" marker 使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99

"显示当前的行号列号：
set ruler

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line
set laststatus=2

"==========================================
" others 其它配置
"==========================================
autocmd! bufwritepost _vimrc source % " vimrc文件修改之后自动加载。 windows。
autocmd! bufwritepost .vimrc source % " vimrc文件修改之后自动加载。 linux。

" editor settings
set guifont=Monaco\ h9
set history=1000
set nocompatible
set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set report=0                                                      " always report number of lines changed                "
set nowrap                                                        " donot wrap lines
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " 括号配对情况
set showmode							  " set showmode
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
set matchpairs+=<:>                                               " specially for html
" set relativenumber

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai


"==========================================
" Plugin settings
" vundle 管理
"==========================================
set nocompatible  		"be iMproved
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'


"==========================================
"主题：molokai
"==========================================
Bundle 'tomasr/molokai'
let g:molokai_original = 1
let g:rehash256 = 1


" NeoComplCache
" 自动补全
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview
"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


"==========================================
"hot key 自定义快捷键
"==========================================


"========================== config for plugins end ======================================

"==========================================
" 主题,及一些展示上颜色的修改
"==========================================
"开启语法高亮
syntax enable
syntax on

" 修改主题和颜色展示
colorscheme molokai
set background=dark
set t_Co=256


