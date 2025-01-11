shell is a programming language
echo: print the argument
which echo(or other programming) shows the path
pwd: print work directory
cd: change directory
cd ~ brings to your home directory
cd - will cd to the directory you were previously in
ls --help
ls -l: long listing format
mv a.path b.path
cp a.path b.path
rm: remove a file
rm -r: remove a dir
rmdir: remove empty dir
mkdir: create new dir
man: manual page
Ctrl L: clear and return to the top
echo hello > hello.txt
echo world >> hello.txt:will append but not overwrite
cat < hello.txt > hello2.txt
a | b: take the output of a as the input of b
ls -l | tail -n1
head/tail/cat
head --lines=3 (file)
sudo or do as su: do as root(super user)
sudo su: to get the root's shell
xdg-open(gio open): open the file
vim/nano: editor
vim need to use 'i' to insert and esc to quit and then ':q!'will force to quit, and ':wq' write and quit
file a:will tell you a's attribute
a='hello'
echo $a

vim mcd.sh /create a new file and you can write function
source mcd.sh /the function can be used
mcd test /use mcd and give a argument 'test'
$0 will be the name of the script
$? will be the error code in the previous command(like return 0/1)
$_ will be the last argument
$@ can used in for loop like 'for file in "$@"'
$# means the number of arguments
$$ is the process ID of the command that is running
grep: search for string
!! : repeat the last command
|| && just like java
foo=$(pwd) --> will give foo a value that from a command(pwd)
cat <(ls) <(ls ..) : return the whole output of two commands

chmod u(user)/g(group)/o(other)/ (space can change all the people)+/-r/w/x $file : change limit
ls *.sh (*globbing)
shellcheck
find . -name "*.tmp" -exec rm {} \;
tldr, fzf, tree, broot, convert, touch, ffmpeg, rg
sudo ln -s /opt/idea/bin/idea.sh /usr/local/bin/idea(创造链接）