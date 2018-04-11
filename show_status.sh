#!/bin/bash

if [[ -e $1 ]] && [[  $1 != ''  ]]; then 
	TARGET=$1
        BRANCH=$(git rev-parse --abbrev-ref HEAD)
        echo "Current Branch:  $BRANCH"
	echo “HEAD:                $(git cat-file -p HEAD:$TARGET)”
	echo “Index:               $(git cat-file -p :$TARGET)”
	echo “Working Directory:    $(cat $TARGET)”
else
	echo “Sorry cannot find the file $1”
	exit
fi

# END

