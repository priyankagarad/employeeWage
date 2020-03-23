#!/bin/bash -x

#CONSTANT
WAGE_PER_HOUR=20
PRESENT=1
PART_TIME=2
ABSENT=0

#VARIABLE
days=0;
hours=0;
monthly_wage=0
employee_hour=0

echo "Welcome to employee Wage Computation "
#using function get work 
function getWorkHour()
{
	case $1 in
			$PRESENT)
					EMPLOYEE_HOUR=8
					echo $EMPLOYEE_HOUR;
					;;

			$PART_TIME)
					EMPLOYEE_HOUR=4
					echo $EMPLOYEE_HOUR;
					;;

			$ABSENT)
					EMPLOYEE_HOUR=0
					echo $EMPLOYEE_HOUR;
					;;
	esac
}
while [[ $days -le 20 && $hour -le 100 ]]
do
	attendance=$((RANDOM%3))
	employee_hour=$( getWorkHour $attendance ) 
	hours=$((hours+$employee_hour))
	((days++))
	daily_wage=$(( hours*WAGE_PER_HOUR ))
	monthly_wage=$(( daily_wage+monthly_wage ))
done 
