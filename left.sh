#!/bin/bash

## i3 workspace grid switch left##

#works only when name=num for all workspaces

. ws_state.sh

if [ "${WORKSPACE[2]}" = "focused" ]
then
	i3-msg workspace 1
elif [ "${WORKSPACE[3]}" = "focused" ]
then
	i3-msg workspace 2
elif [ "${WORKSPACE[5]}" = "focused" ]
then
	i3-msg workspace 4
elif [ "${WORKSPACE[6]}" = "focused" ]
then
	i3-msg workspace 5
fi

. ws_notify.sh
