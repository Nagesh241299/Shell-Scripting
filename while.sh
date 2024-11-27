#!/bin/bash

num=0

while [[ $num -le 10  ]]
do
	echo $num
	num=$((num+2))
done

'
Output:
0
2
4
6
8
10
'
