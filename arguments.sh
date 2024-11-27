# Arguments
'
./varibles.sh harshit sahu 34
      $0        $1     $2  $3    
'
#!/bin/bash

# This is Jetha Lal ki Duniya

<< comment
Anything 
written 
here will not be execute
comment

name="babitaji"

echo "Name is $name, and date is $(date)"

echo "enter the name:"

read username

echo "You entered $username"

echo "The characters in $0 are:  $1 $2" # example of arguments

'
Output:
chmod +x arguments.sh
/arguments.sh harshit sahu
Name is babitaji, and date is wed Nov 24 05:38:34 UTC 2024
enter the name: 
Kunal
You entered Kunal
The characters in ./aruguments.sh are: harshit sahu
'
