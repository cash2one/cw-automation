#!/bin/bash

file="iplist.txt"


for ip in `awk '/^[^#]/{print $1}' $file`; do
    port=`awk -v I=$ip '{if(I==$1)print $2}' $file`
    user=`awk -v I=$ip '{if(I==$1)print $3}' $file`
    pass=`awk -v I=$ip '{if(I==$1)print $4}' $file`
    new=`awk -v I=$ip '{if(I==$1)print $5}' $file`

expect -c "
    spawn ssh -p$port $user@$ip
    set timeout 2
    expect {
        \"(yes/no)\" {send \"yes\r\";exp_continue}
        \"password:\" {send \"$pass\r\";exp_continue}
        \"$user@*\" {send \"echo \'$new\' |passwd --stdin $user\r exit\r\";exp_continue}

#\"$user@*\"  {send \"df -h\r exit\r\";exp_continue}

    }"

done
