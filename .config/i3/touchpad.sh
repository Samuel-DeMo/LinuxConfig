#!/bin/bash

set -e
com=$(xinput list 'ASUE140C:00 04F3:3145 Touchpad' | sed -n 2p | cut -d" " -f4)

echo $com

if [ $com = "disabled" ]
then
	com=$(xinput enable 'ASUE140C:00 04F3:3145 Touchpad')
else
	com=$(xinput disable 'ASUE140C:00 04F3:3145 Touchpad')
fi

echo $new
