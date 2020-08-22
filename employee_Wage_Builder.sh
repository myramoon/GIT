#!/usr/local/bin/bash

#CONSTANTS
IS_PRESENT=1
EMPLOYEE_PER_HOUR_RATE=20

#VARIABLES
workHour=0
salary=0
attendance_Status=$((RANDOM%2))  #Check attendance status using RANDOM function

if [[ $IS_PRESENT -eq $attendance_Status ]]
then
	workHour=8 
else
	workHour=0
fi
 
echo "Working hours of employee : " $workHour 				#Print work hours for the day and resulting salary.
echo "salary : " $(( workHour * EMPLOYEE_PER_HOUR_RATE ))



