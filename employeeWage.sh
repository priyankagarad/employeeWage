#!/bin/bash -x

#CONSTANT
wage_per_hour=20

#VARIABLE
days=0;
hours=0;
employee_hour=0
present=1
partTime=2
absent=0

echo "Welcome to employee Wage Computation "

function getWorkHour()
{
	case $1 in
			$present)
					employee_hour=8
					echo $employee_hour;
					;;

			$partTime)
					employee_hour=4
					echo $employee_hour;
					;;

			0)
					employee_hour=0
					echo $employee_hour;
					;;
	esac
}
while [[ $days -le 20 && $hour -le 100 ]]
do
	attendance=$((RANDOM%3))
	employee_hour=$( getWorkHour $attendance ) 
	hours=$((hours+$employee_hour))
	((days++))
	daily_wage_hour=$(( hours*wage_per_hour ))
	monthly_wage_hour=$(( daily_wage_hour+monthly_wage_hour ))
done 
