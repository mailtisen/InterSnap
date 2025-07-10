#!/bin/bash
LOCK_FILE="/tmp/lockfile"
TIMEOUT=60

acquire_lock() {
if [ -f "$LOCK_FILE" ]; then
pid=$(cat "$LOCK_FILE")
if ps -p "$pid" > /dev/null; then
echo "already locked"
exit 1
else
rm -f "$LOCK_FILE"
fi
fi
echo $$ > "$LOCK_FILE"
}

release_lock() {
rm -f "$LOCK_FILE"
}

trap release_lock EXIT

acquire_lock
echo "lock applied"
exec ./scripts/initAsset.sh
