#!/usr/local/bin/bash -x

#CONSTANTS
IS_FULL_TIME=2
IS_PART_TIME=1
EMPLOYEE_PER_HOUR_RATE=20
MAX_WORKING_HOURS=100
MAX_WORKING_DAYS=20
 
#VARIABLES
workHour=0
totalWorkHours=0
totalWorkingDays=0
salary=0
totalSalary=0
 
while [[ $totalWorkHours -lt $MAX_WORKING_HOURS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
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
 
	totalWorkHours=$(( totalWorkHours + workHour )) #update total working hours
	totalWorkingDays=$((totalWorkingDays + 1))      #increment the number of days logged 
done
 
totalSalary=$((totalWorkHours * EMPLOYEE_PER_HOUR_RATE ))  	    #compute total salary 
echo "Salary of the employee for the current month : " $totalSalary #print total salary for the month
 
 
 
 
	 
	 
	

 



