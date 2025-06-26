#!/bin/bash
sleep 1;
cnt=0
while [ $cnt -lt 120 ]; do
#   #time ./invoke.sh >> /home/user/workspace/SNAPSHOTDIR/rtimeipfslog.log

chmod 777 /home/user/workspace/SNAPSHOTDIR/Tarfiles
rm -rf /home/user/workspace/SNAPSHOTDIR/Tarfiles/*.gpg

gpg --batc -c --passphrase-file /home/user/workspace/SNAPSHOTDIR/pass.txt /home/user/workspace/SNAPSHOTDIR/Tarfiles/SHeight_20000.tar
sleep 3;
cnt=`expr $cnt + 1`
done
sleep 1;