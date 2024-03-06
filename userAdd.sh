#!/bin/bash

while read user ;
do
	if [[ $(cat /etc/passwd | grep $user | wc -l) -gt 0 ]]; then
		echo "User $user Exists"
	else
		 useradd -m $user
		 echo "User $user Created"
	fi
done <names.csv
