getHeightList() {
    #discover --configFile conf.yaml --peerTLSCA ${PWD}/../organizations/peerOrganizations/org1.example.com/peers/peer0.org1.example.com/tls/ca.crt --us
#erKey ${PWD}/../organizations/peerOrganizations/org1.example.com/users/User1@org1.example.com/msp/keystore/2e79d98b30e3a054
#01910c7133aa201b82fecef355a9ca5a345a192603d14f17_sk --userCert ${PWD}/../organizations/peerOrganizations/org1.example.com/u
#sers/User1@org1.example.com/msp/signcerts/cert.pem  --MSP Org1MSP saveConfig
 
   # discover --configFile conf.yaml peers --channel mychannel  --server localhost:7051 | grep "LedgerHeight" 
      
    discover --configFile conf.yaml peers --channel mychannel  --server localhost:7051 | grep  -Eo '"LedgerHeight":.*,' | head -n1

     
}

 getHeightList

