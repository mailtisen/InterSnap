#!/bin/bash

SOURCE_DIR="$PWD/SNAPSHOTDIR"
BASE_TAR_NAME="snapshotarchives"
TAR_DIR="${SOURCE_DIR}/tar_files"
mkdir -p "$TAR_DIR"

for item in "$SOURCE_DIR"/*; do
if [ -d "$item" ] || [ -f "$item" ]; then
ITEM_NAME=$(basename "$item")
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
TAR_FILE="${TAR_DIR}/${BASE_TAR_NAME}_${TIMESTAMP}.tar"
tar cvf "$TAR_FILE" -C "$SOURCE_DIR" "$ITEM_NAME"
fi
done
#tar cvf snapshotarchives_1_day.tar /home/user/SNAPSHOTDIR/archive_1_day

