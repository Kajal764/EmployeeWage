#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4
dailyWage=0
Total_working_hours=0
days=0
function getHours(){
	dailyhrs=$1
	case $dailyhrs in
   0)
	dailyhrs=0
   ;;
   1)
   dailyhrs=$HALF_DAY_WORKING_HOUR
   ;;
   2)
   dailyhrs=$FULL_DAY_WORKING_HOUR
   ;;
esac
echo $dailyhrs
}


while [[ $Total_working_hours -le 100 && $days -le 20 ]] 
do
	attendance=$((RANDOM%2))
	hrs=$(getHours $attendance)
	dailyWage=$(( $hrs * $WAGE_PER_HOUR ))
   Total_working_hours=$(($Total_working_hours + $hrs))

days=$(($days+1))
done

echo "total working hours $Total_working_hours"


