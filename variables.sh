#!/bin/bash

# This is Jetha Lal ki Duniya

<< comment
Anything 
written 
here will not be execute
comment

'
This is also an method of multi-line comment
'

name="babitaji" # variable declaration

echo "Name is $name, and date is $(date)" # here variable is allocated and command `date` is runned 

echo "enter the name:"

read username # user input

echo "You entered $username"

'
Output:
chmod +x ./variable.sh
/variable.sh 
Name is babitaji, and date is wed Nov 24 05:38:34 UTC 2024
enter the name: 
Kunal
You entered Kunal

'
