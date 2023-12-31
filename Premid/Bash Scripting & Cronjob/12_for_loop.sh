#! /usr/bin/bash

for i in word1 word2 word3; do
    echo "$i"
done

for FILE in *; do
	echo $FILE

	if [ -d "$FILE"  ]; then
		echo "It is file"
	fi
done

