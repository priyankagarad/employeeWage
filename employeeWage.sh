#!/bin/bash -x 
echo "Welcome to employee Wage Computation "

#CONSTANT
WAGE_PER_HOUR=20
PRESENT=1
PART_TIME=2
ABSENT=0

#VARIABLE
days=0;
hours=0;
employee_hour=0
monthly_wage=0
daily_wage=0 

#store day and daily wage along with total wage
function getWorkHour()
{
	case $1 in
			$PRESENT)
					employee_hour=8
					echo $employee_hour;
					;;

			$PART_TIME)
					employee_hour=4
					echo $employee_hour;
					;;

			$ABSENT)
					employee_hour=0
					echo $employee_hour;
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
echo -e "${!daily_wage[@]}: \n ${daily_wage[@]}"


