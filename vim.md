# vim
:options可进行配置options
:! 紧接着外部命令可以执行该外部命令
i : insert
o : 在光标下方新建一行并进入编辑模式（大写则在上方）
:q 退出
:q! 强退
:qa (quit all) 关闭所有窗口
:w 写入
:e {文件名} 打开要编辑的文件
:ls 显示打开的缓存
:help {标题} 打开帮助文档
:help :w 打开 :w 命令的帮助文档
:help w 打开 w 移动的帮助文档
基本移动: hjkl （左， 下， 上， 右）
词： w （下一个词）， b （词初）， e （词尾）
行： 0 （行初）， ^ （第一个非空格字符）， $ （行尾）
屏幕： H （屏幕首行，highest）， M （屏幕中间，middle）， L （屏幕底部，lowest）
翻页： Ctrl-u （上翻）， Ctrl-d （下翻）
文件： gg （文件头）， G （文件尾）
按行数跳转：{行数}<CR> 或者 {行数}G ({行数}为行数)
# % ： %可在括号之间来回换
查找：
# fa (find a，从光标开始，左往右)
Fa(find a,从右往左）
ta (移到a前,从左往右到a为止）
Ta(移到a后,从右往左到a为止）
搜索: /{正则表达式}, n / N 用于导航匹配(/abc will move to first abc 按n 跳转到下一个abc,N倒着跳转)
输入 :set xxx 可以设置 xxx 选项。一些有用的选项如下：
  	'ic' 'ignorecase'	查找时忽略字母大小写(noic关闭)
	'is' 'incsearch'	查找短语时显示部分匹配
	'hls' 'hlsearch'	高亮显示所有的匹配短语
如果您想逆向查找字符串，请使用 ? 代替 / 进行。
# 要回到您之前的位置按 CTRL-O (按住 Ctrl 键不放同时按下字母 o)。重复按可以回退更多步。CTRL-I 会跳转到较新的位置。

# (可视化模式):s/old/new/g 可以替换 old 为 new
要替换两行之间出现的每个匹配串，请
     输入   :#,#s/old/new/g   其中 #,# 代表的是替换操作的若干行中
                              首尾两行的行号。
     输入   :%s/old/new/g     则是替换整个文件中的每个匹配串。
    :%s/foo/bar/g
    在整个文件中将 foo 全局替换成 bar
    %s/\[.*\](\(.*\))/\1/g
    将有命名的 Markdown 链接替换成简单 URLs
#     输入   :%s/old/new/gc    会找到整个文件中的每个匹配串，并且对每个匹配串
#                              提示是否进行替换。

u 撤销（undo)
^R redo
d + 移动 = delete
c = d + i(change need to delete and write
dd , cc 都会删除整行(连续两次按下常对整行进行操作）
x 删除当前字符(剪切）
r 将输入值当作参数repalce当前字符
y 复制（yank)
p 粘贴（paste)

v 进入visual mode
V进入行可视模式
^V进入块可视
~反转大小写

4j 相当于按4次j
你可以用修饰语改变“名词”的意义。修饰语i means inside and a means around。
ci( 改变当前括号内的内容
ci[ 改变当前方括号内的内容
da' 删除一个单引号字符串， 包括周围的单引号

. 表示重复执行前一个编辑命令

多窗口
# 用 :sp / :vsp 来分割窗口
同一个缓存可以在多个窗口中显示。

宏
q{字符} 来开始在寄存器{字符}中录制宏
q停止录制
@{字符} 重放宏
宏的执行遇错误会停止
{计数}@{字符}执行一个宏{计数}次
宏可以递归
首先用q{字符}q清除宏
录制该宏，用 @{字符} 来递归调用该宏 （在录制完成之前不会有任何操作）

处理文件
:w FILENAME  可将当前 VIM 中正在编辑的文件保存到名为 FILENAME 的文 件中。
v motion :w FILENAME 可将当前编辑文件中可视模式下选中的内容保存到文件FILENAME 中。
:r FILENAME 可提取文件 FILENAME 并将其插入到当前文件的光标位置后面。
:r !dir 可以读取 dir(dir也可改为ls之类) 命令的输出并将其放置到当前文件的光标位置后面。

当输入 : 命令时，按 CTRL-D 可以查看可能的补全结果。
按 <TAB> 可以使用一个补全。
v , gc to toggle the comment
