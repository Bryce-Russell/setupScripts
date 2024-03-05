#!/bin/bash

if [ $(cat /etc/passwd | grep eli | wc -l) -gt 0 ]; then
	echo "User Eli Exists"
else
	useradd -m eli
	echo "User Eli Created"
fi
