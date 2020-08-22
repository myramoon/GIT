#!/usr/local/bin/bash -x

#DICTIONARY
declare -A daily_Wage

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

#function to get work hours on daily basis
 
function getPerDayWorkHours() {
 
	case $1 in			#attendance_Status as incoming parameter
 
		$IS_PART_TIME)
	                workHour=8 ;;	 #part-time hours 
 
               	$IS_FULL_TIME)
                       	workHour=16 ;;	 #full-time hours 
 
                *)
                        workHour=0 ;;	 #absent hours 
 
        esac
echo $workHour 
}

#DRIVER CODE
 
while [[ $totalWorkHours -lt $MAX_WORKING_HOURS && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	totalWorkingDays=$((totalWorkingDays + 1)) 			            #increment the number of days logged
	workHour="$( getPerDayWorkHours $((RANDOM%3)) )"  			    #Check attendance status using RANDOM function and call the function that calculates work hours	
	daily_Wage["DAY" $totalWorkingDays]=$((workHour * EMPLOYEE_PER_HOUR_RATE))  #store each day's wage in a dictionary
	totalWorkHours=$((totalWorkHours + workHour))                               #update total working hours logged
done

echo "Salary of the employee for current month : " $(( totalWorkHours * EMPLOYEE_PER_HOUR_RATE ))  #Print monthly salary
echo ${!daily_Wage[@]} 									   #Print dictionary's keys i.e DAY#	
echo ${daily_Wage[@]}									   #Print dictionary containing each day's wage









 
 
 
 
	 
	 
	

 



