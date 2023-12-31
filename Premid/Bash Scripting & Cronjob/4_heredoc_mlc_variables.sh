#! /usr/bin/bash

#Also known as constant variables
#In Unix, constant variables are defined in UPPERCASE
TODAY=$(date +%F)

<<- COMMENT
AoA, today is ${TODAY} 
You can use Heredoc to add multiline comments
Here is the second line comment	
COMMENT

cat << EOF
AoA, today is ${TODAY}
This date is coming from a variable named TODAY in a script
This script also contains multiline comments, use cat < heredoc_mlc_varaibles.sh to take a look.
EOF

