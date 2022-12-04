#!/bin/bash
input=$1
part=${2:-1}

score=0
if [ $part -eq 1 ]; then
  while read line; do
    read low_a high_a low_b high_b <<< $line
    [ $((($low_a-$low_b)*(($high_a-$high_b)))) -le 0 ] && ((score+=1))
  done < <(cat $input | sed 's/[,-]/ /g')
else
  while read line; do
    read low_a high_a low_b high_b <<< $line
    [ $low_b -le $high_a ] && [ $low_a -le $high_b ] && ((score+=1))
  done < <(cat $input | sed 's/[,-]/ /g')
fi
echo $score