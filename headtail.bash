#!/bin/bash
if [ $1 -ne 2 ]; then
	echo "File name and an integer required"
	exit 1
fi
if [ ! -f $1 ]; then
	echo "File does not exist"
	exit 1
fi

intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]]; then
	echo "second argument must be an integer"
	exit 1
fi
let n=$2
let "a = head -n $n"
let "b = tail -n $n"
echo "Head: $a Tail: $b"
