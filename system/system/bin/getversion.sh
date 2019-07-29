#! /system/bin/sh
cat /data/system/packages.xml |grep "data/app/com.zhangyue.read"|sed 's/^.*version="//g'|sed 's/".*$//g'