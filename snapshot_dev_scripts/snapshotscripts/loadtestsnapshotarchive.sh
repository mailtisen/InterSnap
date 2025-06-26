#!/bin/bash
for (( i=1; i <= 2; i++ ))
do
  
   time ./invoke.sh >> snapshotarchiveexecution.txt
done
