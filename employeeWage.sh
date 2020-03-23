#!/bin/bash -x
echo "Welcome to employee Wage Computation"

#CONSTANT
WAGE_PER_HOUR=20
FULL_DAY_HOUR=8
PART_DAY_HOUR=4
ABSENT_HOUR=0

#VARIABLE
days=0
hours=0
totalsalary=0

#calculated wage for a month
while [[ $days -le 20 ]]
	do
	attendance=$((RANDOM%3))
	if [[ $attendance -eq 1 ]]
	then
		hours=$((hours+$FULL_DAY_HOUR))
		((days++))
	elif [[ $attendance -eq 2 ]]
	then
		hours=$((hours+$ABSENT_HOUR))
	else
		hours=$((hours+$ABSENT_HOUR))
		((days++))
	fi
	daily_employee_wage=$(($WAGE_PER_HOUR*$hours))
	totalSalary=$((totalSalary+daily_employee_wage))
done
