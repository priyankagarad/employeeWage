#!/bin/bash -x

wage_per_hour=20

echo "Welcome to employee Wage Computation "

#attendance check
attendance=$((RANDOM%3))
echo $attendance
if [[ $attendance -eq 1 ]]
then
	full_day_hour=8;
elif [[ $attendance -eq 2 ]]
then
	echo "Absent"
else
	part_time_hour=4;
fi

read -p "enter choice:" choice
case $choice in
		0)
			daily_employee_wage=$(($wage_per_hour*$full_day_hour))
			part_time_employee_wage=$(($wage_per_hour*$part_time_hour))
			;;

		1)
			daily_employee_wage=$(($wage_per_hour*$full_day_hour))
			part_time_employee_wage=$(($wage_per_hour*$full_day_hour))
			;;

		2)
			echo "employee is absent"
			;;
esac
