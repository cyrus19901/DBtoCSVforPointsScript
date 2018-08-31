#!/bin/bash

#########################################################################
# 
# Author: Rajveer Singh github.com/cyrus19901
# Please read README before running the program
# 
#########################################################################


if [ "$1" = "" ]
then
	echo "You must enter the name of the database. Please check the README."
	exit 1
fi
db=$1

for i in 1 2 3 4 5 6 ;
do
	variable=($(sqlite3 $db "SELECT topic_name FROM topics WHERE topic_id=$i"))
	value=$(echo $variable | sed 's/[\/._-]//g')
	echo $value
	sqlite3 $db<<- EXIT_HERE
	.mode csv
	.header on
	.output $value.csv
	SELECT datetime(ts,'localtime') as local_time ,value_string FROM data WHERE topic_id = $i;
	.exit
	EXIT_HERE
	echo "$variable.csv generated"
done
