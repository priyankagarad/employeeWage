#!/bin/bash -x
#CONSTANT
WAGE_PER_HOUR=20
echo "Welcome to employee Wage Computation "

#attendance check
attendance=$((RANDOM%3))
if [[ $attendance -eq 1 ]]
then
	full_day_hour=8;
elif [[ $attendance -eq 2 ]]
then
	part_time_hour=4
else
	echo "absent"
fi
#calculate daily employee wage
daily_employee_wage=$(($WAGE_PER_HOUR*$full_day_hour))

#part time employee wage
part_time_employee_wage=$(($WAGE_PER_HOUR*$part_time_hour))
