package main

import (
	"encoding/json"
	"fmt"
	"github.com/hyperledger/fabric-contract-api-go/contractapi"
)

type InteropContractN1 struct {
	contractapi.Contract
}

type Request struct {
	TxID          string `json:"txId"`
	SourceNetwork string `json:"sourceNetwork"`
	TestData      string `json:"testData"`
}

type Receipt struct {
	TxID              string `json:"txId"`
	OriginalRequestID string `json:"originalRequestTxId"`
	ResponseTxID      string `json:"responseTxIdFromN2"`
	Note              string `json:"receiptNote"`
}

func (c *InteropContractN1) SaveRequest(ctx contractapi.TransactionContextInterface, txId string, testData string) error {
	req := Request{
		TxID:          txId,
		Status:        "endorsed",  
		SourceNetwork: "N1",
		TestData:      testData,
	}
	reqBytes, _ := json.Marshal(req)
	return ctx.GetStub().PutState("REQ_"+txId, reqBytes)
}

func (c *InteropContractN1) SaveReceipt(ctx contractapi.TransactionContextInterface, txId string, refTxIdN1 string, respTxIdN2 string) error {
	receipt := Receipt{
		TxID:              txId,
		OriginalRequestID: refTxIdN1,
		ResponseTxID:      respTxIdN2,
		Note:              "Response received and verified",
	}
	bytes, _ := json.Marshal(receipt)
	return ctx.GetStub().PutState("RECEIPT_"+txId, bytes)
}

func main() {
	cc, err := contractapi.NewChaincode(&InteropContractN1{})
	if err != nil {
		panic(err)
	}
	if err := cc.Start(); err != nil {
		panic(err)
	}
}
