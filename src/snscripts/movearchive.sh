
# d="$(date +"%d-%m-%Y")"

# ssh -i /home/user/aws_keypair/test3keypair.pem ubuntu@ec2-65-2-175-219.ap-south-1.compute.amazonaws.com
# sudo su
# docker cp peer0.org1.example.com:/var/hyperledger/production/snapshots/completed/mychannel/ ${PWD}/../archive/$d
# #chmod 777 -R ${PWD}/../archive/


scp -r -i /home/user/aws_keypair/test3keypair.pem ubuntu@ec2-65-2-175-219.ap-south-1.compute.amazonaws.com:/home/ubuntu/ts/fabric-samples/test-network/archive/ ${PWD}/../archive
chmod 777 -R ${PWD}/../archive
