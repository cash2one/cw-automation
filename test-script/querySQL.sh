#!/bin/bash
num=`ls $1 |tr ' ' '^$'|wc -l`
for i in `seq 1 $num`
do
    file_name=`ls $1|tr ' ' '^$'|sed -n $i'p'`
#   echo $file_name
#   echo 查看 $1$file_name
    cat $1/$file_name|grep $2 2>/dev/null
    if [ $? -eq 0 ]
    then
        echo $file_name文件里有"$2"
    fi
done


#!/bin/bash
#cpdir
cpfrom="/web/test"
cpto="/tmp/test"
pwdtest="/tmp/oldpwd.txt"
if [ ! -d $cpto ]
then
{
 mkdir $cpto
 chmod 777 $cpto
 echo "创建目录成功"
}
fi
find /web/test/* -type d >> ${pwdtest}  #查找目录为文件夹的路径，写入到pwdtest文件中
chmod 777 ${pwdtest}                    #修改文件权限
sed -i "s#${cpfrom}#${cpto}#g" ${pwdtest}    #替换为新目录路径，这里注意必须用双引号
for subdir in `cat ${pwdtest}`
do
{
        mkdir ${subdir}
}
done
rm -rf ${cpto}/*
awk '{if (NR%4==0){print $0} else {printf"%s ",$0}}' filename.txt

find . -regex "./[0-9]+" | xargs -i mv {} newdir
find . -maxdepth 1 -regex "./[0-9]+" | xargs -i mv {} newdir
#（1）cat /dev/null > out
find ./ -type f -name “*sql.cp” -exec grep “abc”{} >> out
#（2）find ./ -name “*.cp” | xargs grep “abc” > out
find dir -type f -name "*.c" -exec sh mycp.sh {} out ";"

find ./ -type f -name “*sql.cp” | xargs -i mv {} newdir

find /opt/jwsqldir/ -regex  *.sql -print -exec ls {} \;
find /opt/jwsqldir/ -regex  “*sql.sql” -print -exec ls {} \;
find .  -name "test.file" -exec rm -rf {} \;

find /opt/apache-packages/ -name "*.sql" -exec rm -rf {} \;
find /opt/jwsqldir/ -name "*.sql" | xargs -i mv {} /opt/apache-packages/
find /opt/jwsqldir/ -name "*.sql" | xargs -i cp {} /opt/apache-packages/
