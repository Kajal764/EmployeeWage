#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HAIF_DAY_WORKING_HOUR=4
dailyWage=0

attendance=$((RANDOM%2))

if [[ $attendance -eq 0 ]]
then
	echo "employee is absent"
else
	echo "employee is present"
	dailyWage=$(($FULL_DAY*$WAGE_PER_HOUR))
	echo "Daily wage is $dailyWage"
fi
