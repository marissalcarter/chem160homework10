#!/bin/bash
if [ $# -ne 3 ]; then
	echo "Needs three arguments"
	exit 1
fi
let a=$1
let b=$2
let c=$3
let "d = a + b + c"
let "e = d * 12"
echo $e
