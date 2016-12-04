#!/bin/bash

set -eu

readonly divide_num=5
readonly file_to_path=./test
readonly line_num=`wc -l $file_to_path | awk '{print $1}'`
readonly divide_line_num=`expr $line_num / $divide_num`

c1=0
c2=1
echo $line_num
while [ $c1 -lt $divide_num ]; do
  from=`awk -v c=$c1 -v d=$divide_line_num 'BEGIN {print c * d + 1}'`
  to=`  awk -v c=$c2 -v d=$divide_line_num 'BEGIN {print c * d}'`
  case $c1 in
    0 ) sed -n "$from,$to"p       $file_to_path > out$c1;;
    1 ) sed -n "$from,$to"p       $file_to_path > out$c1;;
    2 ) sed -n "$from,$to"p       $file_to_path > out$c1;;
    3 ) sed -n "$from,$to"p       $file_to_path > out$c1;;
    4 ) sed -n "$from,$line_num"p $file_to_path > out$c1;;
  esac
  c1=$((c1+ 1))
  c2=$((c2+ 1))
done
