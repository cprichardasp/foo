#!/bin/bash

if [ -e $1 ]; then
	TARGET=$1
	echo 3 > $TARGET
	git add $TARGET
	echo 4 > $TARGET
	./show_status.sh $TARGET
else
	echo “Sorry cannot file the file $1”
	exit
fi

#END

