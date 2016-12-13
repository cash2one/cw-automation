#!/bin/bash
. /etc/init.d/functions

devsNum=`ps -eo comm,pid|awk '/sdk_devs/'|wc -l`
gatewayNum=`ps -eo comm,pid|awk '/sdk_gateway/'|wc -l`
live_serverNum=`ps -eo comm,pid|awk '/sdk_live/'|wc -l`
nvr_Num=`ps -eo comm,pid|awk '/sdk_nvr/'|wc -l`
oss_Num=`ps -eo comm,pid|awk '/sdk_oss/'|wc -l`
portalNum=`ps -eo comm,pid|awk '/portal_ds6/'|wc -l`
rec_serverNum=`ps -eo comm,pid|awk '/sdk_rec/'|wc -l`
xhome_ssNum=`ps -eo comm,pid|awk '/xhome_ss/'|wc -l`

#echo $devsNum $gatewayNum $live_serverNum $nvr_Num $oss_Num $portalNum $rec_serverNum $xhome_ssNu



status()
{
   output='printf "%-11s is Running and PID is %6s\n"'
   [ $devsNum  -eq 1 ] && printf "%-11s is Running and PID is %6s\n"  "dev" "`ps -eo comm,pid|awk '/sdk_devs/{print $2}'`" || echo "dev is not Run"
   [ $gatewayNum -eq 1 ] && printf "%-11s is Running and PID is %6s\n" "gateway" "`ps -eo comm,pid|awk '/sdk_gateway/{print $2}'`" || echo "gateway is not Run"
   [ $live_serverNum -eq 1 ] && printf "%-11s is Running and PID is %6s\n" "live_server" "`ps -eo comm,pid|awk '/sdk_live/{print $2}'`" || echo "live_server is not Run"
   [ $nvr_Num -eq 1  ] && printf "%-11s is Running and PID is %6s\n" "nvr" "`ps -eo comm,pid|awk '/sdk_nvr/{print $2}'`" || echo "Nvr is not Run"
   [ $oss_Num -eq 1  ] && printf "%-11s is Running and PID is %6s\n" "oss" "`ps -eo comm,pid|awk '/sdk_oss/{print $2}'`" || echo "oss is not Run"
   [ $portalNum -eq 1  ] && printf "%-11s is Running and PID is %6s\n" "portal"  "`ps -eo comm,pid|awk '/portal_ds6$?/{print $2}'`" || echo "portal is not Run"
   [ $rec_serverNum -eq 1  ] && printf "%-11s is Running and PID is %6s\n" "rec_server"  "`ps -eo comm,pid|awk '/sdk_rec/{print $2}'`" || echo "rec_server is not Run"
   [ $xhome_ssNum -eq 1  ] && printf "%-11s is Running and PID is %6s\n" "ss"  "`ps -eo comm,pid|awk '/xhome_ss/{print $2}'`" || echo "ss is not Run"
   [ `ps -e|awk '/report/'|wc -l` -eq 2 ] && printf "%-11s is Running and PID is %6s\n" "report" "`ps -e|awk '/report/{printf("%s ",$1)}'`" || echo "report is not Run"
}

start()
{
  #start devs
   if [ $devsNum -eq 1  ];then
     echo "dev Server is already Running"
   else
     cd devs
      chmod +x sdk_devs_351
     ./sdk_devs_351  --Ice.Config=xhome_webdev.conf  -s -d  >& /dev/null &
   [ $? -eq 0  ] && action "Starting dev Sucessfull" /bin/true || action "Starting Failed" /bin/false
    cd ..
  fi

 #start gateway
  if [ $gatewayNum -eq 1  ];then
    echo "gateway Server is already Running"
  else
    cd gateway
    chmod +x sdk_gateway_ice351
    ./sdk_gateway_ice351 -s -d -alarmvideo >& /dev/null &
    [ $? -eq 0 ] && action "Starting gateway Sucessfull" /bin/true || action "Starting Failed" /bin/false
    cd ..
  fi


 #Start live_server
  if [ $live_serverNum -eq 1  ];then
    echo "live_Server is already Running "
  else
    cd  live_server
    chmod +x sdk_live_server_ice351
    ./sdk_live_server_ice351 -s -d  >& /dev/null &
    [ $? -eq 0 ] && action "Starting live_server Sucessfull" /bin/true || action "Starting Failed" /bin/false
    cd ..
  fi


 #Start nvr Server
 if [ $nvr_Num -eq 1 ];then
    echo "nvr_Server is already Running "
  else
    cd nvr
    chmod +x sdk_nvr_write
    ./sdk_nvr_write -s -d >& /dev/null &
    [ $? -eq 0 ] && action "Starting nvr_server Sucessfull" /bin/true || action "Starting Failed" /bin/false
    cd ..
  fi

 #start oss server
  if [ $oss_Num -eq 1  ];then
    echo "oss_Server is already Running "
  else
    cd oss_server/
     chmod +x sdk_oss_server_ice351
    ./sdk_oss_server_ice351  --Ice.Config=oss_server.conf  -s -d  >& /dev/null &
    [ $? -eq 0 ] && action "Starting oss_server Sucessfull" /bin/true || action "Starting Failed" /bin/false
    cd ..
  fi

 #start portal
   if [ $portalNum -eq 1  ];then
    echo "portal_Server is already Running "
  else
    cd portal/
    chmod +x portal_ds60_ice351
    ./portal_ds60_ice351  -s -d&  -s -d  >& /dev/null &
    [ $? -eq 0 ] && action "Starting portal Sucessfull" /bin/true || action "Starting Failed" /bin/false
    cd ..
  fi

 #start rec_server
    if [ $rec_serverNum -eq 1  ];then
    echo "rec_Server is already Running "
  else
    cd rec_server/
    chmod +x sdk_rec_server_ice351
    ./sdk_rec_server_ice351  any 1088 112.74.75.20 123  >& /dev/null &
    [ $? -eq 0 ] && action "Starting rec_server Sucessfull" /bin/true || action "Starting Failed" /bin/false
   cd ..
  fi

 #start ss_server
    if [ $xhome_ssNum -eq 1  ];then
    echo "ss_server is already Running "
  else
    cd ss
    chmod +x xhome_ss
     ./xhome_ss -s -d >& /dev/null &
    [ $? -eq 0 ] && action "Starting ss_server Sucessfull" /bin/true || action "Starting Failed" /bin/false
   cd ..
  fi

#start report
 ./report

}

stop()
{
  #stop dev
  killall -9 sdk_devs_351 >& /dev/null
  [ $? -eq 0 ] && action "stop dev" /bin/true || action "stop dev" /bin/false

  #stop gateway
  killall -9 sdk_gateway_ice351 &> /dev/null
  [ $? -eq 0 ] && action "stop gateway" /bin/true || action "stop gateway" /bin/false

  #stop live_server
  killall -9 sdk_live_server_ice351 &> /dev/null
  [ $? -eq 0 ] && action "stop live_server" /bin/true || action "stop live_server" /bin/false

  #stop nvr
  killall sdk_nvr_write &> /dev/null
   [ $? -eq 0 ] && action "stop nvr" /bin/true || action "stop nvr" /bin/false
  #stop oss
  killall -9 sdk_oss_server_ice351 >& /dev/null
  [ $? -eq 0 ] && action "stop oss" /bin/true || action "stop oss" /bin/false
  #stop portal
  killall portal_ds6$?_ice351 >& /dev/null
  [ $? -eq 0 ] && action "stop portal" /bin/true || action "stop portal" /bin/false
  #stop rec_server
  killall -9 sdk_rec_server_ice351 &> /dev/null
  [ $? -eq 0 ] && action "stop rec_server" /bin/true || action "stop rec_server" /bin/false
  #stop ss
  killall -9 xhome_ss &> /dev/null
  [ $? -eq 0 ] && action "stop ss" /bin/true || action "stop ss" /bin/false
  #stop report
   killall -9 node_report &> /dev/null
   [ $? -eq 0 ] && action "stop report" /bin/true || action "stop ss" /bin/false


}



case $1 in
 start)
      start
      ;;
 stop)
      stop
      ;;
 status)
     status
     ;;
 *)
   echo "Usage $0 {start|stop|status}"
   exit 0
esac
