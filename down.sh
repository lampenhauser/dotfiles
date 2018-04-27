#!/bin/bash

## i3 workspaces grid go down ##

#works only when name=num for all workspaces

. ws_state.sh

if [ "${WORKSPACE[1]}" = "focused" ]
then
	i3-msg workspace 4
elif [ "${WORKSPACE[2]}" = "focused" ]
then
	i3-msg workspace 5
elif [ "${WORKSPACE[3]}" = "focused" ]
then
	i3-msg workspace 6
fi

. ws_notify.sh
