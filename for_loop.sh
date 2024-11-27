#!/bin/bash

# This is for loops script which creates folder with passed arg 1 as name and arg2 as starting range to arg3 as ending range

<< comment
 1 is argument 1 which is folder name
 2 is start range
 3 is end rangeask
comment

for (( num=$2 ; num<=$3; num++ ))
do
	mkdir "$1$num"
done

'
Output: 
./for_loop.sh Harshit 1 5
ls
Harshit1 Harshit2 Harshit3 Harshit4 Harshit5

If you want to delete
rm -r Har*
'
