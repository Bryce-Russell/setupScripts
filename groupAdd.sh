#!/bin/bash

while read group ;
do
	if [[ $(cat /etc/group | grep $group | wc -l) -gt 0 ]]; then
		echo "Group $group Exists"
	else
		 groupadd $group
		 echo "Group $group Created"
	fi
done <groupList.csv


while read devs ;
do
		usermod -aG devs $devs
done<devs.csv

while read tests ;
do
	usermod -aG testers $tests

done <testers.csv

while read prods ;
do
	usermod -aG supports $prods
done <supports.csv

