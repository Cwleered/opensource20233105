#!/bin/sh
read -p "숫자:" num

i=1
while [ $i -le $num ]; do
  echo "hello, world"
  i=$((i + 1))
done
