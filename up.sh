#!/bin/bash

## i3 workspace grid switch up ##

#works only when name=num for all workspaces

. ws_state.sh

if [ "${WORKSPACE[4]}" = "focused" ]
then
	i3-msg workspace 1
elif [ "${WORKSPACE[5]}" = "focused" ]
then
	i3-msg workspace 2
elif [ "${WORKSPACE[6]}" = "focused" ]
then
	i3-msg workspace 3
fi

. ws_notify.sh
