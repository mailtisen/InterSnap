#!/bin/bash
sleep 1;
cnt=0
while [ $cnt -lt 120 ]; do
#   #time ./invoke.sh >> /home/user/Work_TS/SNAPSHOTDIR/rtimeipfslog.log

chmod 777 /home/user/Work_TS/SNAPSHOTDIR/Tarfiles
rm -rf /home/user/Work_TS/SNAPSHOTDIR/Tarfiles/*.gpg

gpg --batc -c --passphrase-file /home/user/Work_TS/SNAPSHOTDIR/pass.txt /home/user/Work_TS/SNAPSHOTDIR/Tarfiles/SHeight_20000.tar
sleep 3;
cnt=`expr $cnt + 1`
done
sleep 1;