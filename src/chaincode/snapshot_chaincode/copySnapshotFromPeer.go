package main

import (
	"fmt"
	"os/exec"
	"time"
)

func main() {
	dateStr := time.Now().Format("02-01-2006")
	cmdStr := "sudo docker cp peer0.org1.example.com:/var/hyperledger/production/snapshots/completed/mychannel/ archive/" + dateStr
	fmt.Printf("%s", cmdStr)
	out, _ := exec.Command("/bin/sh", "-c", cmdStr).Output()
	fmt.Printf("%s", out)
	//fmt.Printf("%s", (time.Now().Format("02-01-2006")))
}
