#!/bin/bash

if [ $2 -eq "-c" ]
then
	gnome-terminal -- kill -9 $1 &
	com=$(screen $3 $4)
else
	gnome-terminal &
	gnome-terminal -- kill -9 $1 &
	com=$(screen $2 $3)
fi

