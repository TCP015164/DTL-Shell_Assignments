#!/bin/bash

file="calculator.sh"


if [ -r $file ]
then
	echo "File is readable"
else
	echo "File is not readable"
fi


if [ -w $file ]
then
	echo "File is editable / writable"
else
	echo "File doesn't have editing / writing permission"
fi


if [ -x $file ]
then
	echo "File is executable"
else
	echo "File is not executable"
fi


if [ -f $file ]
then
	echo "It is an ordinary file"
else
	echo "It is not an ordinary file"
fi


if [ -d $file ]
then
	echo "File is a directory"
else
	echo "File is not a directory"
fi


if [ -s $file ]
then 
	echo "File has a size"
else
	echo "File is of zero size"
fi


if [ -e $file ]
then
	echo "File is exist"
else
	echo "File do not exist"
fi
