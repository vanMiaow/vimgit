" ==== Van ================
" 语言
let $LANG='zh_CN'
set langmenu=zh_CN

" 编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

" 外观
winpos 100 100               " 窗口位置
set lines=30 columns=100     " 窗口大小
set guioptions-=m            " 隐藏菜单栏
set guioptions-=T            " 隐藏工具栏
colo desert                  " 主题
set guifont=courier_new:h13  " 字体
set number                   " 显示行号
set cursorline               " 当前行高亮
set list                     " 显示不可见字符
set lcs=tab:\\\ ,trail:*     " \t显示为\   ,行尾空格显示为*
set tabstop=4                " Tab宽度,\t的宽度
set softtabstop=4            " SoftTab宽度,<Tab>或<BS>的宽度
set noexpandtab              " 不以space取代tab
set shiftwidth=4             " 缩进宽度

" 搜索
set ignorecase
set smartcase

" 折叠
set foldmethod=marker
set foldlevelstart=99
let fortran_fold=1
" let fortran_fold_conditionals=1
" set foldmethod=syntax | move to ftdetect/_user_syntax.vim
" set foldcolumn=3      |

" 映射
let mapleader=','
nnoremap <leader>t  :call Test()<cr>
nnoremap <leader>tr :call Trim()<cr>
nnoremap <leader>tl :call Trim_line()<cr>
" nnoremap <leader>tr mxHmy:%s/\v\s+$//g<cr>`yzt`x
" nnoremap <leader>tl mx0:s/\v\s+$/<cr>`x
nnoremap <leader>de d$
nnoremap <leader>g  :Grep<cr>
nnoremap <leader>mc :call MelcorCount()<cr>
nnoremap <leader>re /\v\*\*\*\*\*\*\*\*<cr>
nnoremap <leader>sd :call SimmerProcessData()<cr>
nnoremap <leader>st :call SimmerProcessText()<left>
nnoremap <leader>sm :set filetype=_melcor<cr>
nnoremap <leader>sr :set filetype=_relap<cr>
nnoremap <leader>ss :set filetype=_simmer<cr>
inoremap <a-k> <up>
inoremap <a-j> <down>
inoremap <a-h> <left>
inoremap <a-l> <right>
" inoremap <a-w> <esc>lwi
" inoremap <a-e> <esc>ea

" netrw.vim
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_winsize=-24
let g:netrw_browse_split=4

" 脚本
source $VIMRUNTIME/_user_script/_general_script.vim
source $VIMRUNTIME/_user_script/_melcor_script.vim
source $VIMRUNTIME/_user_script/_relap_script.vim
source $VIMRUNTIME/_user_script/_simmer_script.vim
" =========================

" ==== Vundle ============={{{
set nocompatible
filetype off
set rtp+=$VIMRUNTIME/../bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'matrix.vim--Yang'
Plugin 'winmanager'
Plugin 'minibufexplorerpp'
Plugin 'taglist.vim'
Plugin 'grep.vim'
" Plugin 'Visual-Mark'
call vundle#end()
filetype plugin indent on
" =========================}}}

" ==== Plugin =============
" Matrix *conflict with MiniBufExpl++
" nnoremap <leader>mx :Matrix<cr>
" WinManager
let g:defaultExplorer=0
let g:winManagerWidth=24
let g:winManagerWindowLayout='FileExplorer|TagList'
nnoremap <leader>e :WMToggle<cr>
" MiniBufExpl++
let g:miniBufExplorerMoreThanOne=0
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapCTabSwitchBufs=1
" Ctags
set tags+=../tags
" =========================

" ==== Default ============{{{
" Vim with all enhancements
source $VIMRUNTIME/vimrc_example.vim

" Use the internal diff if available.
" Otherwise use the special 'diffexpr' for Windows.
if &diffopt !~# 'internal'
  set diffexpr=MyDiff()
endif
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction
" =========================}}}

" ==== Van ================
set nobackup
set noundofile
set noswapfile
" =========================
