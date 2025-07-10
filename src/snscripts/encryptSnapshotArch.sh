#!/bin/bash

SOURCE_DIR="$PWD/SNAPSHOTDIR"
TAR_DIR="${SOURCE_DIR}/tar_files"
ENCRYPTED_DIR="${SOURCE_DIR}/encrypted_files"
mkdir -p "$TAR_DIR"
mkdir -p "$ENCRYPTED_DIR"

for item in "$SOURCE_DIR"/*; do
if [ -d "$item" ] || [ -f "$item" ]; then
ITEM_NAME=$(basename "$item")
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
TAR_FILE="${TAR_DIR}/snapshot_${TIMESTAMP}.tar"
tar cvf "$TAR_FILE" -C "$SOURCE_DIR" "$ITEM_NAME"
gpg -c --batch --passphrase the_passphrase "$TAR_FILE"
mv "${TAR_FILE}.gpg" "$ENCRYPTED_DIR"
rm "$TAR_FILE"
fi
done

echo "Encrypted tar files created in: $ENCRYPTED_DIR"


#gpg -c snapshotarchives_20_days.tar
#passphrase #######

