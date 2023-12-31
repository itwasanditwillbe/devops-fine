#! /usr/bin/bash

uname='test'

ssh -T ${uname}@127.0.0.1 << COMMANDS

mkdir test
cd test
touch test.txt
echo 'hello man' > test.txt

COMMANDS
