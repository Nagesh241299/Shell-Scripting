#!/bin/bash

read -p "Enter username: " username # p stands for prompt 

echo "you entered $username"

sudo useradd -m $username

echo "New User added"

'
Output:
Enter username: Harshit
you entered Harshit
New User added

cat /etc/passwd

'
