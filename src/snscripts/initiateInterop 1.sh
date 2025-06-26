#!/bin/bash

#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY", "QmQbqsJznQZJhxMjq7g8CyW6jqAKBVwyiGTqTb5YdQWmYy_#######"]' --local-network=network1
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY", "QmQbqsJznQZJhxMjq7g8CyW6jqAKBVwyiGTqTb5YdQWmYy_#######"]' --local-network=network2

./bin/fabric-cli chaincode invoke mychannel simplestate create '["{$1}", "{$2}"]' --local-network=network1
./bin/fabric-cli chaincode invoke mychannel simplestate create '["{$1}", "{$2}"]' --local-network=network2


# ./bin/fabric-cli chaincode query mychannel simplestate read '["CID_KEY"]' --local-network=network2