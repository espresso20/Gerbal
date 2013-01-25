#!/bin/bash
#testing some new ideas

echo testing a show directory script

for entry in $(ls) 
	do 
	 du -sh "$entry"
	done | sort -n
