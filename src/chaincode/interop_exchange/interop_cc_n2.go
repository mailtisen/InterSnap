package main

import (
	"encoding/json"
	"fmt"
	"github.com/hyperledger/fabric-contract-api-go/contractapi"
)

type InteropContractN2 struct {
	contractapi.Contract
}

type Response struct {
	TxID             string `json:"txId"`
	DestinationNet   string `json:"destinationNetwork"`
	RefTxIDFromN1    string `json:"refTxIdFromN1"`
	TestResponse     string `json:"testResponse"`
}

func (c *InteropContractN2) SaveResponse(ctx contractapi.TransactionContextInterface, txId string, refN1TxId string, testResp string) error {
	resp := Response{
		TxID:           txId,
		DestinationNet: "N2",
		RefTxIDFromN1:  refN1TxId,
		TestResponse:   testResp,
		Status:         "endorsed",    
	}
	bytes, _ := json.Marshal(resp)
	return ctx.GetStub().PutState("RESP_"+txId, bytes)
}

func main() {
	cc, err := contractapi.NewChaincode(&InteropContractN2{})
	if err != nil {
		panic(err)
	}
	if err := cc.Start(); err != nil {
		panic(err)
	}
}
