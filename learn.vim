
==== Vundle插件管理 ======================================================={{{

1.克隆
git clone https://github.com/VundleVim/Vundle.vim.git D:/Software/Vim/bundle/Vundle.vim

2.配置
set nocompatible
filetype off
set rtp+=$VIMRUNTIME/../bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

3.安装
:PluginInstall

4.使用
* 显示插件
  :PluginList

* 搜索插件
  :PluginSearch
  从http://vim-scripts.org/搜索插件,该网站已停止运行,因此该命令会出错
  可关注Github上将搜索源替换为https://github.com/vim-scripts/的计划

* 安装插件
  添加
  Plugin 'someplugin'                    " 从https://github.com/vim-scripts/
  Plugin 'someuser/someplugin'           " 从https://github.com/
  Plugin 'git://someurl/someplugin.git'  " 从其他git
  Plugin 'file:///somepath/someplugin'   " 从本地
  到call vundle#begin/end()之间
  :PluginInstall

* 删除插件
  移除相应Plugin 'someplugin'
  :PluginClean

* 更新插件
  :PluginUpdate

===========================================================================}}}

==== 按键 ================================================================={{{

1.光标{{{
k         ↑
j         ↓
h         ←
l         →
0         Home
$         End

nG        移动到第n行
gg        Ctrl + Home / 1G
G         Ctrl + End

w         下一个单词开头
e         下一个单词结尾
b         上一个单词开头
W/E/B     则仅以空格分隔单词

^b        Page Up
^f        Page Down}}}

2.查找替换{{{
/word     向下查找
?word     向上查找
n         继续查找(同向)
N         继续查找(反向)

:n1,n2s/w1/w2/g[c]  从第n1行到第n2行查找w1,并替换为w2
                    允许正则,特殊符号须加\转义,标识/也可用#替代
                    $表示行尾    (:1,$s/w1/w2/g)
                    %表示全文      (:%s/w1/w1/g)
                    c表示操作需确认}}}

3.复制粘贴{{{
x         Delete,向后删除一个字符
X         Backspace,向前删除一个字符

d         删除
dd        删除当前行
ndd       由当前行起,向下删除共n行
dnG       删除当前行与第n行之间所有行,允许dgg/dG
d0        删除行首与游标之间所有字符
d$        删除行尾与游标之间所有字符

y         复制
yy        复制当前行
nyy       由当前行起,向下复制共n行
ynG       复制当前行与第n行之间所有行,允许ygg/yG
y0        复制行首与游标之间所有字符
y$        复制行尾与游标之间所有字符

v         选择
V         行选择
^v        块选择

p         粘贴至下一行
P         粘贴至上一行

.         重复操作

u         undo
^r        redo}}}

4.编辑模式{{{
i         从光标输入
I         从当前行第一个非空字符输入(≈行首)
a         从光标后输入
A         从行尾输入
o         从下一行另起新行输入
O         从上一行另起新行输入
r         取代(一次)
R         取代(一直)}}}

5.文件{{{
:w        保存
:q        退出
:q!       强制退出(不保存)
:wq       保存并退出
:e file   编辑}}}

6.折叠{{{
set fdm=marker
zfngg   折叠当前行到第n行
zd      删除当前折叠
za      打开/关闭当前折叠
zo      打开当前折叠
zc      关闭当前折叠
zr      打开所有折叠
zm      关闭所有折叠
大写    嵌套折叠}}}

7.窗口{{{
:vsplit   垂直分割
^w + hjkl 移动光标至目标方向窗口
^w + HJKL 移动当前窗口至目标方向}}}

===========================================================================}}}

==== 高亮 ================================================================={{{

1.定义语法规则
在$VIMRUNTIME/syntax/下建立 语法规则.vim
开头    " quit when a syntax file was already loaded
        if exists("b:current_syntax")
            finish
        endif
中间    syn keyword/match/region ${group} ... 详见:help syn-define,syn-arguments
        hi ${group} ...                       详见:help highlight
        hi def link ${from-group} ${to-group} 详见:help highlight-link,group-name
结尾    let b:current_syntax = "语法规则"

2.识别文件类型
在$VIMRUNTIME/ftdetect/下建立user_syntax.vim(名字任意),添加
au BufRead,BufNewFile *.文件后缀 set filetype=语法规则

===========================================================================}}}

==== 其他 ================================================================={{{

1.批量注释
* 列输入
  按^v在需要插入的位置选择一列(或多列),按I进入列输入模式
  输入完成后按Esc,即在选择区域的左侧列输入
  可用于批量注释
  ********************************
  *                              *
  *                              *
  *             测试             *
  *                              *
  *                              *
  ********************************
  取消批量注释:^v,d

* 查找替换
  行首批量注释
  :n1,n2s/^/[注释符]/g
  取消行首批量注释
  :n1,n2s/^[注释符]//g

===========================================================================}}}

