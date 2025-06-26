package main

import (
	"fmt"
	"os/exec"
)

func main7() {

	cmdStr := "sudo docker exec peer channel getinfo -c mychannel"
	fmt.Printf("%s", cmdStr)
	out, _ := exec.Command("/bin/sh", "-c", cmdStr).Output()
	fmt.Printf("%s", out)
	//fmt.Printf("%s", (time.Now().Format("02-01-2006")))
}
