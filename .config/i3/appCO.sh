#!/bin/bash

if [ $2 = "-c" ]
then
	com=screen $3 $4
else
	com=screen $2 $3 &
	gnome-terminal
fi

# sleep 2
# killcom=$(kill -9 $1)
