
#!/bin/bash
sleep 1;
cnt=0
while [ $cnt -lt 120 ]; do
#   #time ./invoke.sh >> /home/user/workspace/SNAPSHOTDIR/rtimeipfslog.log
ipfs pin rm QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d;ipfs repo gc; time ipfs add /home/user/workspace/SNAPSHOTDIR/IPFS_Docs/SHeight_25000.tar.gpg
sleep 3;
cnt=`expr $cnt + 1`
done
sleep 1;