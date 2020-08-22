#!/usr/local/bin/bash

#CONSTANTS
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_PER_HOUR_RATE=20
MAX_WORKING_DAYS=20

#VARIABLES
workHour=0
salary=0
totalSalary=0
 
for (( day=1; day<=$MAX_WORKING_DAYS; day++ ))
do
	attendance_Status=$((RANDOM%3))  #Check attendance status using RANDOM function	
		case $attendance_Status in
	
   			$IS_PART_TIME)
      				workHour=8 ;;
 
   			$IS_FULL_TIME)
      				workHour=16 ;;
 
   			*)
      				workHour=0 ;;
 
		esac
 
	salary=$((workHour * EMPLOYEE_PER_HOUR_RATE))
	totalSalary=$((totalSalary + salary))
 
done
 
echo "Salary of the employee for the current month : " $totalSalary
 
 
 
	 
	 
	

 



