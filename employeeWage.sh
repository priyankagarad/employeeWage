#!/bin/bash -x 

#CONSTANT
WAGE_PER_HOUR=20
PRSENT=1
PART_TIME=2
ABSENT=0

#VARIABLE
days=0;
hours=0;
employee_hour=0
monthly_wage=0
daily_wage=0

echo "Welcome to employee Wage Computation "

#using function calculate calculate total wage
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
while [[ $days -le 20 && $hours -le 100 ]]
do
	attendance=$((RANDOM%3))
	employee_hour=$( getWorkHour $attendance )
	hours=$((hours+$employee_hour))
	daily_wage=$(( hours*WAGE_PER_HOUR ))
	daily_wage[$days]=$daily_wage;
	((days++))
	monthly_wage=$(( daily_wage+monthly_wage ))
done
echo "${daily_wage_hour[@]}"
