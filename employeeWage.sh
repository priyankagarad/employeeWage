#!/bin/bash -x
#CONSTANT
WAGE_PER_HOUR=20
PRESENT=1
PART_TIME=2
ABSENT=0

echo "Welcome to employee Wage Computation "

#attendance check and calculated employee salary
attendance=$((RANDOM%3))
case $attendance in
		$PRESENT)
			EMPLOYEE_HOUR=8
			EMPLOYEE_SALARY=$(($WAGE_PER_HOUR*$EMPLOYEE_HOUR))
			;;

		$PART_TIME)
			EMPLOYEE_HOUR=4
			EMPLOYEE_SALARY=$((WAGE_PER_HOUR*EMPLOYEE_HOUR))
			;;

		$ABSENT)
			EMPLOYEE_HOUR=0
			EMPLOYEE_SALARY=0
			;;
esac
