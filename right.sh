#!/bin/bash

## i3 workspace grid switch right ##

#works only when name=num for all workspaces

. ws_state.sh

if [ "${WORKSPACE[1]}" = "focused" ]
then
	i3-msg workspace 2
elif [ "${WORKSPACE[2]}" = "focused" ]
then
	i3-msg workspace 3
elif [ "${WORKSPACE[4]}" = "focused" ]
then
	i3-msg workspace 5
elif [ "${WORKSPACE[5]}" = "focused" ]
then
	i3-msg workspace 6
fi

. ws_notify.sh
