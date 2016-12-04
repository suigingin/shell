#!/bin/bash

to_val=`expr 30 - 10 + 1`
for i in `yes "" | cat -n | head -30 | tail -$to_val`; do
    echo $i
done

echo "-----------------------------"

for i in `yes "" | cat -n | head -30 | \
awk "(NR % 5 == 0) && (NR >= 10) {print NR}"`; do
    echo $i
done
