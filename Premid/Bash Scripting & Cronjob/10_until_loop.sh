#! /usr/bin/bash

echo "Hi, this program will print the table of the number you like"
echo "Let's start"

echo "Please enter the number between 1 - 9"
read number

nextdigit=1

until [ "$nextdigit" -gt 10 ]; do
	echo "$number x $nextdigit = "$(( number * nextdigit  ))
	nextdigit=$((nextdigit + 1))
done

