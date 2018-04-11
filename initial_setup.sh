#!/bin/bash

if [ -e $1 ]; then
	TARGET=$1
	echo 'version 3' > $TARGET
	git add $TARGET
	echo 'version 4' > $TARGET
	./show_status.sh $TARGET
else
	echo “Sorry cannot file the file $1”
	exit
fi

#END

