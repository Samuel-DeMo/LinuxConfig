#!/bin/bash

set -e

if [ $# != 2 ]
then
	echo "It needs an option [-d | -s] and a file"
	return 1
fi

if [ $1 = "-d" ]
then
	destination=/opt/lampp/htdocs/projects/dynamic
else
	if [ $1 = "-s" ]
	then
		destination=/opt/lampp/htdocs/projects/static/$2
	else
		echo "Not a static or dynamic page"
		echo "It needs the option '-d' (dynamic) or '-s' (static)"
	    return 1
	fi
fi

echo $(cp $2 $destination)
