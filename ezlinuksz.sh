#!/bin/bash

IFS=''

SRCFILE=$(dirname -- $0)'/ezlinuksz.txt'

maxLinuksz=$(grep -E "^$" $SRCFILE | wc -l)
randomLinuksz=$(( $RANDOM % $maxLinuksz + 1 ))

linukszCounter=0

cat $SRCFILE | while read -r LINE; do
    if [[ "$LINE" = "" ]]; then
        linukszCounter=$((linukszCounter+1))
    fi
    if [[ $linukszCounter = $randomLinuksz ]]; then
        echo -E $LINE
    fi
done
