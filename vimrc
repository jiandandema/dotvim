set number
set shiftwidth=2
set cindent
set tabstop=2
set encoding=utf8
"设置搜索高亮
set hlsearch
"更改末尾空格显示
set listchars=tab:▸\ ,trail:♪
set scrolloff=8

call plug#begin()
        Plug 'scrooloose/nerdcommenter' "批量注释
        Plug 'frazrepo/vim-rainbow'                     "括号 颜色
        Plug 'scrooloose/nerdtree'                      "文件 显示
        Plug 'vim-airline/vim-airline'  "bar显示
        Plug 'scrooloose/syntastic'                     "语法 检测
        Plug 'majutsushi/tagbar'                             "编程用的Tag
        Plug 'tpope/vim-surround'                            "更改配对符
        Plug 'raimondi/delimitmate'                     "自动 配对符号
call plug#end()

"自动加载NERDTREE
autocmd vimenter * NERDTree

"隐藏NERDTREE
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"缓冲区切换与关闭
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>
nnoremap <C-^> :bd<CR>
"ESC快捷键
inoremap jj <esc>
vnoremap jj <esc>

"vimairline显示buffers
let g:airline#extensions#tabline#enabled = 1

"syntastic新手推荐
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
