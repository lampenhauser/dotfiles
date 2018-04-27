#!/bin/bash

## get workspace states from i3 ##

input=$(i3-msg -t  get_workspaces)

for i in {1..6}
do
	WORKSPACE[$i]="empty"

	if [[ $input = *\"num\":$i* ]]
		then WORKSPACE[$i]="active"
	fi

	if [[ $input = *\"num\":$i,\"name\":\"$i\",\"visible\":true,\"focused\":true* ]]
		then WORKSPACE[$i]="focused"
	fi

done
