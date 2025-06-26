#!/bin/bash
sleep 1;
cnt=0
while [ $cnt -lt 120 ]; do
#   #time ./invoke.sh >> /home/user/workspace/SNAPSHOTDIR/rtimeipfslog.log
sh initiateInterop.sh
sleep 3;
cnt=`expr $cnt + 1`
done
sleep 1;