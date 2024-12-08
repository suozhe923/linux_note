启动和退出
启动 tmux：

或者指定会话名称：
tmux new -s mysession  

分离会话（退出 tmux 但保持会话运行）：
按下 Ctrl + b，然后按 d。

重新连接会话：
tmux attach -t mysession  
或者，如果只有一个会话：
tmux attach  
退出 tmux 会话（关闭当前会话）：
在 tmux 中输入 exit，或者使用 Ctrl + b 然后按 x 来关闭活动窗格。

会话管理
列出所有会话：
tmux ls  

杀死会话：
tmux kill-session -t mysession  

窗口和窗格管理
创建新窗口：
按下 Ctrl + b，然后按 c。

切换窗口：
按下 Ctrl + b，然后按数字键（如 0, 1, 2, 等）。

关闭窗口：
输入 exit 或者使用 Ctrl + b 然后按 &。

创建分窗格（垂直分割）：
按下 Ctrl + b，然后按 %。

创建分窗格（水平分割）：
按下 Ctrl + b，然后按 "。

切换窗格：
按下 Ctrl + b，然后使用方向键（上、下、左、右）来切换。

调整窗格大小：
按下 Ctrl + b，然后按下 Ctrl 和方向键。

复制和粘贴
进入复制模式：
按下 Ctrl + b，然后按 [。

选择文本：
使用方向键移动光标，按下 空格 开始选择，移动光标选择文本，然后按 Enter 复制。

粘贴文本：
按下 Ctrl + b，然后按 ]。

用户配置
你可以在 ~/.tmux.conf 文件中自定义 tmux 的行为，例如设置快捷键、颜色、主题等等。

常用快捷键汇总
Ctrl + b：tmux 命令前缀
c：创建新窗口
w：列出窗口
z: 扩大窗口
n：下一个窗口
p：上一个窗口(previous)
%：垂直分割窗格
"：水平分割窗格
x：关闭当前窗格
d：分离会话
[：进入复制模式
]：粘贴
