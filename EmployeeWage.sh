#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
dailyWage=0
Total_working_hours=0
days=0
while [[ Total_working_hours -le 100 && days -le 20 ]] 
do
attendance=$((RANDOM%3))
case $attendance in
	0)
	echo "employee is absent"
	echo "Daily wage is 0 "
	;;
	1)
	echo "employee is present"
	dailyWage=$(( $HALF_DAY_WORKING_HOUR * $WAGE_PER_HOUR ))
	Total_working_hours=$(($Total_working_hours + $HALF_DAY_WORKING_HOUR))
	echo "Daily wage is $dailyWage"
	;;
	2)
	echo "employee is present"
	dailyWage=$(( $FULL_DAY_WORKING_HOUR * $WAGE_PER_HOUR ))
	Total_working_hours=$(($Total_working_hours+$FULL_DAY_WORKING_HOUR))
	echo "Daily wage is $dailyWage"
	;;
esac
days=$(($days+1))
done

echo "total working hours $Total_working_hours"


