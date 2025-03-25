遇到缩放问题，可以考虑修改desktop文件
例如steam.desktop(从/usr/share/applications复制到~/.local/share/applications)
Exec=__env GDK_SCALE=2__ <应用程序命令>
Exec= env GDK_SCALE=2 /usr/bin/steam-runtime %U
