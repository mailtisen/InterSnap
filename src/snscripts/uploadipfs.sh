#!/bin/bash
uploadArchiveToIPFS(){
local archive_file_path="$1"
if [ -z "$archive_file_path" ] || [ ! -f "$archive_file_path" ]; then
return 1
fi
ipfs_output=$(ipfs add "$archive_file_path" 2>&1)
if [ $? -eq 0 ]; then
return 0
else
return 1
fi
}
uploadArchiveToIPFS "snapshotarc.tar.gpg"
if [ $? -ne 0 ]; then
exit 1
fi