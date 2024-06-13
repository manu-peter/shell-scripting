#!/bin/bash
echo
dir="backup"
if [ -d "$dir" ]
then 
	echo " directory already exists "
else
	mkdir "$dir"
	echo " directory created"
fi
