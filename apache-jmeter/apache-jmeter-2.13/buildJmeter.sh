#!/bin/bash  
#author jun.cui@ctrip.com by 20161121 
echo ¡°Input file name£º¡±  
cd /opt/apache-jmeter/apache-jmeter-2.13
ant -buildfile build_cloudwisdom.xml
echo "excute jmeter has been done..."