#! /usr/bin/bash

#<< COMMENT
echo "please type the operation you want to perform, ADD, SUB or  DIV"
read operation

echo "please enter first number"
read number1

echo "please enter second number"
read number2

case $operation in
	'ADD' )
		echo "$number1 + $number2 : "$((number1 + number2))
		;;
	'SUB' ) 
		echo "$number1 - $number2 : "$((number1 - number2))
		;;
	'DIV' ) 
		echo "$number1 / $number2 : "$((number1 / number2))
		;;
	* ) 
		echo "Please type valid operation"	
		exit 1
esac
exit 0
#COMMENT
