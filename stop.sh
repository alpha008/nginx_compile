#/bin/sh
ps -aux | grep nginx | grep -v grep | awk '{print $2}' | xargs kill -9 
