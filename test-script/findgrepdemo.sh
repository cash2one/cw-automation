#grep和sed替换文件中的字符串

sed -i s/"str1"/"str2"/g `grep "str1" -rl --include="*.[ch]" ./`
#将当前目录下的所有.c、.h文件中的str1字符串替换为str2字符串。
'''
参数解释:
sed:
-i 表示操作的是文件，``括起来的grep命令，表示将grep命令的的结果作为操作文件
s/"str1"/"str2"/表示查找str1并替换为str2，后面跟g表示一行中有多个str1的时候，都替换，而不是仅替换第一个

grep:
-r表示查找当前目录以及所有子目录
-l表示仅列出符合条件的文件名，传给sed命令做替换操作
--include="*.[ch]" 表示仅查找.c、.h文件


注：如果不需要查找子目录，仅需要在当前目录替换，可直接用sed命令：
'''
sed -i s/"str1"/"str2"/g ./*.[ch]
awk '$0 ~ /abc/ {gsub("abc", "def", $0); print $1, $3}' abc.txt

name='zone "localhost"'
sed "/$name/,/};/d" named.conf
sed -i "s/oldstring/newstring/g" `grep oldstring -rl yourdir`
