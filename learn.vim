
==== Vundle������� ======================================================={{{

1.��¡
git clone https://github.com/VundleVim/Vundle.vim.git D:/Software/Vim/bundle/Vundle.vim

2.����
set nocompatible
filetype off
set rtp+=$VIMRUNTIME/../bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

3.��װ
:PluginInstall

4.ʹ��
* ��ʾ���
  :PluginList

* �������
  :PluginSearch
  ��http://vim-scripts.org/�������,����վ��ֹͣ����,��˸���������
  �ɹ�עGithub�Ͻ�����Դ�滻Ϊhttps://github.com/vim-scripts/�ļƻ�

* ��װ���
  ���
  Plugin 'someplugin'                    " ��https://github.com/vim-scripts/
  Plugin 'someuser/someplugin'           " ��https://github.com/
  Plugin 'git://someurl/someplugin.git'  " ������git
  Plugin 'file:///somepath/someplugin'   " �ӱ���
  ��call vundle#begin/end()֮��
  :PluginInstall

* ɾ�����
  �Ƴ���ӦPlugin 'someplugin'
  :PluginClean

* ���²��
  :PluginUpdate

===========================================================================}}}

==== ���� ================================================================={{{

1.���{{{
k         ��
j         ��
h         ��
l         ��
0         Home
$         End

nG        �ƶ�����n��
gg        Ctrl + Home / 1G
G         Ctrl + End

w         ��һ�����ʿ�ͷ
e         ��һ�����ʽ�β
b         ��һ�����ʿ�ͷ
W/E/B     ����Կո�ָ�����

^b        Page Up
^f        Page Down}}}

2.�����滻{{{
/word     ���²���
?word     ���ϲ���
n         ��������(ͬ��)
N         ��������(����)

:n1,n2s/w1/w2/g[c]  �ӵ�n1�е���n2�в���w1,���滻Ϊw2
                    ��������,����������\ת��,��ʶ/Ҳ����#���
                    $��ʾ��β    (:1,$s/w1/w2/g)
                    %��ʾȫ��      (:%s/w1/w1/g)
                    c��ʾ������ȷ��}}}

3.����ճ��{{{
x         Delete,���ɾ��һ���ַ�
X         Backspace,��ǰɾ��һ���ַ�

d         ɾ��
dd        ɾ����ǰ��
ndd       �ɵ�ǰ����,����ɾ����n��
dnG       ɾ����ǰ�����n��֮��������,����dgg/dG
d0        ɾ���������α�֮�������ַ�
d$        ɾ����β���α�֮�������ַ�

y         ����
yy        ���Ƶ�ǰ��
nyy       �ɵ�ǰ����,���¸��ƹ�n��
ynG       ���Ƶ�ǰ�����n��֮��������,����ygg/yG
y0        �����������α�֮�������ַ�
y$        ������β���α�֮�������ַ�

v         ѡ��
V         ��ѡ��
^v        ��ѡ��

p         ճ������һ��
P         ճ������һ��

.         �ظ�����

u         undo
^r        redo}}}

4.�༭ģʽ{{{
i         �ӹ������
I         �ӵ�ǰ�е�һ���ǿ��ַ�����(������)
a         �ӹ�������
A         ����β����
o         ����һ��������������
O         ����һ��������������
r         ȡ��(һ��)
R         ȡ��(һֱ)}}}

5.�ļ�{{{
:w        ����
:q        �˳�
:q!       ǿ���˳�(������)
:wq       ���沢�˳�
:e file   �༭}}}

6.�۵�{{{
set fdm=marker
zfngg   �۵���ǰ�е���n��
zd      ɾ����ǰ�۵�
za      ��/�رյ�ǰ�۵�
zo      �򿪵�ǰ�۵�
zc      �رյ�ǰ�۵�
zr      �������۵�
zm      �ر������۵�
��д    Ƕ���۵�}}}

7.����{{{
:vsplit   ��ֱ�ָ�
^w + hjkl �ƶ������Ŀ�귽�򴰿�
^w + HJKL �ƶ���ǰ������Ŀ�귽��}}}

===========================================================================}}}

==== ���� ================================================================={{{

1.�����﷨����
��$VIMRUNTIME/syntax/�½��� �﷨����.vim
��ͷ    " quit when a syntax file was already loaded
        if exists("b:current_syntax")
            finish
        endif
�м�    syn keyword/match/region ${group} ... ���:help syn-define,syn-arguments
        hi ${group} ...                       ���:help highlight
        hi def link ${from-group} ${to-group} ���:help highlight-link,group-name
��β    let b:current_syntax = "�﷨����"

2.ʶ���ļ�����
��$VIMRUNTIME/ftdetect/�½���user_syntax.vim(��������),���
au BufRead,BufNewFile *.�ļ���׺ set filetype=�﷨����

===========================================================================}}}

==== ���� ================================================================={{{

1.����ע��
* ������
  ��^v����Ҫ�����λ��ѡ��һ��(�����),��I����������ģʽ
  ������ɺ�Esc,����ѡ����������������
  ����������ע��
  ********************************
  *                              *
  *                              *
  *             ����             *
  *                              *
  *                              *
  ********************************
  ȡ������ע��:^v,d

* �����滻
  ��������ע��
  :n1,n2s/^/[ע�ͷ�]/g
  ȡ����������ע��
  :n1,n2s/^[ע�ͷ�]//g

===========================================================================}}}

