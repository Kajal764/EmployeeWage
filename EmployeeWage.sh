#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
dailyWage=0
 
for(( i=0;i<20;i++ ))
do
attendance=$((RANDOM%3))
case $attendance in
	0)
	echo "employee is absent"
	;;
	1)
	echo "employee is present"
	dailyWage=$(( $HALF_DAY_WORKING_HOUR * $WAGE_PER_HOUR ))
	echo "Daily wage is $dailyWage"
	;;
	2)
	echo "employee is present"
	dailyWage=$(( $FULL_DAY_WORKING_HOUR * $WAGE_PER_HOUR ))
	echo "Daily wage is $dailyWage"
	;;
esac
done

