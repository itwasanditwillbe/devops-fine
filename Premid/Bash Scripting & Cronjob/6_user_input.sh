#! /usr/bin/bash

#<< COMMENT
echo "please enter your name"
read yname

echo "please enter your reg#"
read regnumber


cat <<- BLOCK
	Hello dear ${yname},
	Thank you for joining DevOps course
	Your registration number is: ${regnumber}
BLOCK
#COMMENT


<< BLOCK

read -p 'please enter your name' yname
read -p 'please enter your reg#' regnumber

cat <<- INNERBLOCK
        Hello dear ${yname},
        Thank you for joining DevOps course
        Your registration number is: ${regnumber}
INNERBLOCK

BLOCK

