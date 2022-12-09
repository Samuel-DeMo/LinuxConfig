#!/bin/bash

if [[ $2 = "-c" ]]
then
	gnome-terminal -- /bin/sh -c "sleep 1; kill -9 $1" '&' &
	com=$(screen $3 $4)
else
	gnome-terminal -- /bin/sh -c "sleep 1; kill -9 $1; gnome-terminal" &
	com=$(screen $2 $3)
fi
