#!/bin/sh
i=0
while true; do
  echo $i
  i=$((i+1))
  sleep 1
  flush
done
