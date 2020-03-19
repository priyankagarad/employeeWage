#!/bin/bash -x

echo "Welcome to employee Wage Computation "
attendance=$((RANDOM%2))
echo $attendance
if [[ $attendance -eq 1 ]]
then
	echo "employee is present"
else
	echo "employee is absent"
fi

