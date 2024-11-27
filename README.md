# Shell-Scripting 🐧
![logo](https://github.com/harshitsahu2311/Shell-Scripting/blob/main/shell.gif)
Shell scripting involves creating a script (a text file) with a series of Linux/Unix commands, executed by the shell (the command-line interface of an OS). The most common shell is bash, but there are others like sh, zsh, and fish.

## Why is Shell Scripting Important for DevOps?
DevOps is all about automating repetitive processes to speed up the development cycle, improve collaboration, and ensure more reliable software delivery. Shell scripting plays a critical role in automating these tasks and creating seamless workflows.<br/>
In DevOps, shell scripts are incredibly useful for:

- Automating tasks like setting up environments, deploying applications, and running tests.

- Configuring systems such as servers, databases, or cloud environments.

- Managing large systems by performing tasks across multiple servers at once.

## Variables
A shell variable is a character string in a shell that stores some value. It could be an integer, filename, string, or some shell command itself. Basically, it is a pointer to the actual data stored in memory. We have a few rules that have to be followed while writing variables in the script (which will be discussed in the article). Overall knowing the shell variable scripting leads us to write strong and good shell scripts.
```
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

```
To run any script - <br/>
` chmod +x script.sh` <br/>
`./script.sh` or `bash script.sh`

Output: 

`Name is babitaji, and date is wed Nov 24 05:38:34 UTC 2024 ` <br/>
`enter the name:` <br/>
Kunal<br/>
`You entered Kunal
`<br/>

## Arguments
Command-line arguments are passed in the positional way i.e. in the same way how they are given in the program execution. 
```
# Arguments
'
./varibles.sh harshit sahu 34
      $0        $1     $2  $3    
'
#!/bin/bash

# This is Jetha Lal ki Duniya

name="babitaji"

echo "Name is $name, and date is $(date)"

echo "enter the name:"

read username

echo "You entered $username"

echo "The characters in $0 are:  $1 $2" # example of arguments

```
Output:

```/arguments.sh harshit sahu``` <br/>

`Name is babitaji, and date is wed Nov 24 05:38:34 UTC 2024` <br/>
`enter the name:` <br/> 
Master <br/>
`You entered Master` <br/>
`The characters in ./aruguments.sh are: harshit sahu` <br/>

## Create User Script
```
#!/bin/bash

read -p "Enter username: " username # p stands for prompt 

echo "you entered $username"

sudo useradd -m $username

echo "New User added"

```
Output:
`Enter username:` Harshit <br/>
`you entered Harshit`<br/>
`New User added` <br/>

Check by this command:
`cat /etc/passwd`

## If Else Elif
```
#!/bin/bash

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

```
Output:

`./if-else.sh` <br/>
`Jetha ne mud ke kise dekha:` babitaji <br/>
`Jetha ka pyaar %:` 110 <br/>
`Jetha is loyal`

## For loop
```
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

```
Output: 
`./for_loop.sh Harshit 1 5` <br/>
`ls` <br/>
`Harshit1 Harshit2 Harshit3 Harshit4 Harshit5` <br/>

If you want to delete <br/>
`rm -r Har*`
## While loop
```
#!/bin/bash

num=0

while [[ $num -le 10  ]]
do
	echo $num
	num=$((num+2))
done
```

Output:
`0 
2
4
6
8
10
`
## Functiona
```
#!/bin/bash

<< disclaimer
This is just for infotainment purpose
disclaimer

# This is function definition

function is_loyal() {
read -p "$1 ne mud ke kise dekha: " bandi
read -p "$1 ka pyaar %" pyaar

if [[ $bandi == "daya bhabhi"  ]];
then
	echo "$1 is loyal"
elif [[ $pyaar -ge 100 ]];
then
	echo "$1 is loyal"
else
	echo "$1 is not loyal"
fi
}

# This is function call
is_loyal "tom"
```
