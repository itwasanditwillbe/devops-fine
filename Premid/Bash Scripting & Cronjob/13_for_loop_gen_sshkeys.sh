#! /usr/bin/bash

basepath='./keys'

create_user_and_keys(){
	useradd -m $1 -p $1
	ssh-keygen -f $basepath/$1 -N " "$1
}

for user in u2019123 u2019124 u2019523; do
	create_user_and_keys $user
done

