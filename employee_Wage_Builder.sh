#!/usr/local/bin/bash

#CONSTANTS

IS_PRESENT=1
attendance_Status=$((RANDOM%2))  #Check attendance status using RANDOM function

if [[ $attendance_Status -eq $IS_PRESENT ]]
then
	echo "Employee is present."   #Print message according to attendance
else
	echo "Employee is absent."
fi



