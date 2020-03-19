#!/bin/bash
wage_per_hour=20
full_day_hour=8

echo "Welcome to employee Wage Computation "

#check employee is present or absent
attendance=$((RANDOM%2))
echo $attendance
if [[ $attendance -eq 1 ]]
then
	echo "employee is present"
else
	echo "employee is absent"
fi

#calculate daily employee wage
daily_employee_wage=$(($wage_per_hour*$full_day_hour))
echo "daily employee wage:$daily_employee_wage"

