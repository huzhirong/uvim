set go= "设置没有gui界面
"set shortmess=atI  " 启动的时候不显示那个援助索马里儿童的提示
set number "显示行号
set autoindent "使用对齐格式，也就是把当前行的的对齐格式应该到下一行
set smartindent "依据上面的对齐格式，智能的选择对齐方式
set tabstop=4 "设置tab键为4个空格
set shiftwidth=4 "设置当行之间交错时使用4个空格
set ruler "设置在编辑过程中，在右下角显示光标位置的状态行
set showmatch "高亮显示匹配的括号
set hlsearch 
set nobackup "设置没有备份文件
set noswapfile "设置没有交换文件
set incsearch "实时匹配你输入的内容
let mapleader = ","  "设置全局快捷键为,
let g:mapleader = ","
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR> 
map <leader>ee :e ~/.vimrc "在文件中编辑.vimrc文件
inoremap <leader>e <esc>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l
"map <space> ?
set cursorline "高亮当前行
set cursorcolumn "高亮纵向行
"set statusline=%h%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]\ \ \ %{strftime('%y-%m-%d\ %A')}
"hi CursorLine guibg=#FFFFC0
set encoding=utf-8 "设置编码
set fileencodings=utf-8,gb2312,gbk,gb18030,latin-1 "设置文件编码
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
"colorscheme candy
colorscheme desert "设置背景颜色 

"pathogen
call pathogen#infect()

"taglist
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1

let g:Tlist_Use_Right_Window=1
let g:Tlist_Compact_Format=1
let g:winManagerWindowLayout='FileExplorer|TagList' 

"winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle

"NERDTree
map nt :NERDTreeToggle
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1

"自动补全
filetype plugin indent on
set completeopt=longest,menu

"snipmate
filetype plugin on
ino <c-k> <c-r>=TriggerSnippet()<cr>
snor <c-k> <esc>i<right><c-r>=TriggerSnippet()<cr>

"ColorSchemeExplorer
map <leader>co :ColorSchemeExplorer<CR>

"SCrollColors
map <leader>sc :SCROLL

"bash-support
let g:BASH_AuthorName   = 'i_still_cry'
let g:BASH_Email        = 'i_still_cry@163.com'
let g:BASH_Company      = 'i_still_cry'

"zencoding-vim
let g:user_zen_expandabbr_key = '<c-j>'
let g:use_zen_complete_tag = 1
let g:no_html_toolbar = 'yes'
let g:html_tag_case = 'lowercase'

"VDBI
nmap <leader>v :VDBI<CR>

"command-t
nmap <silent> <Leader>o :CommandT<CR>

"git-vim
set laststatus=2
set statusline=%{GitBranch()}

"cssbaseline 
map <leader>b :Baseline<CR>

"matrix
map <leader>m :Matrix<CR>

"vimwiki
syntax enable "开启语法
syntax on "高亮语法
filetype on
filetype indent on
nmap <F3> :Vimwiki2HTML<cr> "把当前wiki文件生成html
nmap <F4> :VimwikiAll2HTML<cr> "把所有wiki文件生成html
let g:vimwiki_camel_case = 0 "不要将驼峰式词组作为Wiki词条
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre' "声明可以在wiki里面使用的HTML标签
let g:vimwiki_list = [{
           \ 'path': '/home/cry/vimwiki/',
           \ 'path_html': '/home/cry/vimwiki/html/',
           \ 'auto_export': 1,}]
let g:vimwiki_list = [{'path': '/home/cry/vimwiki/wiki_techno/', 'path_html': '/home/cry/vimwiki/wiki_techno/html/', 'template_path': '/home/cry/vimwiki/wiki_techno/html/template/', 'template_default': 'default', 'template_ext': '.html', 'auto_export': 1},{'path': '/home/cry/vimwiki/wiki_literature/', 'path_html': '/home/cry/vimwiki/wiki_literature/html/', 'template_path': '/home/cry/vimwiki/wiki_literature/html/template/', 'template_default': 'default', 'template_ext': '.html', 'auto_export': 1}]                                
let g:vimwiki_browsers=['/usr/bin/firefox'] "用firefox来预览wiki


"javascript complete 
"autocmd FileType python set omnifunc=pythoncomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"set omnifunc=javascriptcomplete#CompleteJS
"setlocal omnifunc=javacomplete#Complete 
"setlocal completefunc=javacomplete#CompleteParamsInfo 
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd Filetype javascript inoremap <buffer> . .<C-X><C-O>
