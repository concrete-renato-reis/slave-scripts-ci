#!/bin/bash --login
### Script for Kill process on Linux ###
### Created by Marcio G Chahad - version 1.0 - 070618 ###

### Process Name Definition ###
PROCESS="/usr/local/bin/appium"

### Kill process ###
CHECK_PROCESS=`ps aux|grep "$PROCESS" |grep -v grep|head -1|awk '{print $2}'`
if [ ! -z $CHECK_PROCESS ]; then
  echo "Process is running - ok"
  else
/usr/local/bin/node /usr/local/bin/appium &
fi
