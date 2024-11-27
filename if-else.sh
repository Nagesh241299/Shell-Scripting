#!/bin/bash

<< disclaimer
This is just for example of if-else statement
disclaimer

read -p "Jetha ne mud ke kise dekha: " bandi
read -p "Jetha ka pyaar %: " pyaar

if [[ $bandi == "daya bhabhi"  ]]; # start of if statemet
then
	echo "Jetha is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "Jetha is loyal"
else
	echo "Jetha is not loyal"
fi  # end of if statement

'
Output:
chmod +x if-else.sh
./if-else.sh
Jetha ne mud ke kise dekha: babitaji
Jetha ka pyaar %: 110
Jetha is loyal

'
