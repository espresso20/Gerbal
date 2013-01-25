#!/bin/bash
#testing some new ideas

echo testing a show directory script

for entry in $(ls) 
	do 
	 du -sh "$entry"
	done | sort -n
sleep 1
echo testing diff ls
sleep 1

for i in $(ls)
	do
	 du -sh "$i"
	done | sort -n

