getHeightList() {
 
   # discover --configFile conf.yaml peers --channel mychannel  --server localhost:7051 | grep "LedgerHeight" 
      
    discover --configFile conf.yaml peers --channel mychannel  --server localhost:7051 | grep  -Eo '"LedgerHeight":.*,'

     
}

 getHeightList


