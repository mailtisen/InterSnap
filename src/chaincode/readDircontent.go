package main

import (
	"io/fs"
	"path/filepath"
)

func walk(s string, d fs.DirEntry, err error) error {
	if err != nil {
		return err
	}
	if !d.IsDir() {
		println(s)
	}
	return nil
}

func main2() {
	filepath.WalkDir("/home/hp/SnapShotWork/LatestWork/fabric-samples/test-network/snapshotwork_code/snapshotsample/", walk)
}
