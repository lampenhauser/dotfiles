#!/bin/bash

#works only when name=num for all workspaces

. ws_state.sh

## rounded coners ##
# focused_icon='<span foreground="#fdf6e3"></span>'
# empty_icon='<span foreground="#b59800"></span>'
# active_icon='<span foreground="#002b36"></span>'

## sharp corners ##
focused_icon='<span foreground="#fdf6e3"></span>'
empty_icon='<span foreground="#b59800"></span>'
active_icon='<span foreground="#002b36"></span>'

for i in {1..6}
do
	if [ "${WORKSPACE[$i]}" = "focused" ]
	then
		arr[$i]=$focused_icon

	elif [ "${WORKSPACE[$i]}" = "active" ]
	then
		arr[$i]=$active_icon
	else
		arr[$i]=$empty_icon
	fi
done

notification="${arr[1]}  ${arr[2]}  ${arr[3]}\n${arr[4]}  ${arr[5]}  ${arr[6]}"

echo $notification

notify-send.sh --replace-file=/home/lampenhauser/.notifid "$notification"
