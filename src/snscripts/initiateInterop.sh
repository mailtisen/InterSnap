#!/bin/bash

#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY", "QmQbqsJznQZJhxMjq7g8CyW6jqAKBVwyiGTqTb5YdQWmYy_#######"]' --local-network=network1
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY", "QmQbqsJznQZJhxMjq7g8CyW6jqAKBVwyiGTqTb5YdQWmYy_#######"]' --local-network=network2
# ./bin/fabric-cli chaincode query mychannel simplestate read '["CID_KEY"]' --local-network=network2

#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_5000", "QmXJt2YNNaVUZeFAAjX9cKeDMbrw3xBk7ii12qi1c45FTB_#######"]' --local-network=network1
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_5000", "QmXJt2YNNaVUZeFAAjX9cKeDMbrw3xBk7ii12qi1c45FTB_#######"]' --local-network=network2
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_10000", "QmYc7yaH1H4NDJSVYFH8oy9tGNtyTcmmQub5Exyf8hH5Gd_#######"]' --local-network=network1
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_10000", "QmYc7yaH1H4NDJSVYFH8oy9tGNtyTcmmQub5Exyf8hH5Gd_#######"]' --local-network=network2
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_15000", "QmasUu5Zt2DY3ELkSmJsnJGsZXB4ZpXGjz4aDbxrJXxaLv_#######"]' --local-network=network1
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_15000", "QmasUu5Zt2DY3ELkSmJsnJGsZXB4ZpXGjz4aDbxrJXxaLv_#######"]' --local-network=network2

#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_20000", "QmPwbDsWzTiBm2egbjbys5bsngbAyPiVt7sNM35ZdWk6xc_#######"]' --local-network=network1
#./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_20000", "QmPwbDsWzTiBm2egbjbys5bsngbAyPiVt7sNM35ZdWk6xc_#######"]' --local-network=network2
#time ./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_25000", "QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d_#######5"]' --local-network=network1; time ./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_25000", "QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d_#######5"]' --local-network=network2
#time (./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_25000", "QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d_#######5"]' --local-network=network1; ./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_25000", "QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d_#######5"]' --local-network=network2)

./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_25000", "QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d_#######"]' --local-network=network1
./bin/fabric-cli chaincode invoke mychannel simplestate create '["CID_KEY_SHeight_25000", "QmfHCaJGhv2VqCF5ENK5Agm6z4eFoiFXKNKWmRWRUx3s4d_#######"]' --local-network=network2



# ./bin/fabric-cli chaincode query mychannel simplestate read '["CID_KEY_SHeight_1000"]' --local-network=network2