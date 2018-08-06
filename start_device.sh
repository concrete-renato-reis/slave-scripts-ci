#!/bin/bash --login
#set -vx

ANDROID_HOME=/Users/bcg/Library/Android/sdk

### Script for start Android virtual device and Appium Server ###

### LIST DEVICES ###

NEXUS="Nexus_5X_API_22_1"

### STOP DEVICE ###

CHECK_EMULATOR=`ps -aef | fgrep   "Nexus_5X_API_22_1" | grep -v grep | head -n 1 | awk '{print $2}'`

if [ ! -z $CHECK_EMULATOR ]; then

   kill -9 $CHECK_EMULATOR

   else

   echo "Emulador Offline"

fi

### START DEVICE ###

$HOME/Library/Android/sdk/tools/emulator -avd "$NEXUS" -wipe-data &
