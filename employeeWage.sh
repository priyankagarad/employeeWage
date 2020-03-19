#!/bin/bash -x

wage_per_hour=20
days=0;
hours=0;
totalSalary=0;

echo "Welcome to employee Wage Computation "

#attendance check

while [[ $days -le 20 && $hour -le 100 ]]
	do
	attendance=$((RANDOM%3))
	if [[ $attendance -eq 1 ]]
	then
		hour=8;
		hours=$((hours+full_day_hour))
		((days++))
	elif [[ $attendance -eq 2 ]]
	then
		echo "Absent"
		hours=$((hours+0))
	else
		hour=4;
		((days++))
		hours=$((hours+4))
	fi
	daily_employee_wage=$(($wage_per_hour*$hour))
	totalSalary=$((totalSalary+daily_employee_wage))
done
