#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4

declare -a daily_Wage
declare -a Total_Wage
days=0
Total_Wage
Total_Working_Hours=0
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
	daily=$(( $hrs * $WAGE_PER_HOUR ))

	daily_Wage[days]=$daily
   Total_Working_Hours=$(($Total_Working_Hours + $hrs))
	Total=$(( $Total+$daily ))
	Total_Wage[days]=$Total
	days=$(($days+1))
done

echo "daily wage array is "
echo ${daily_Wage[@]}

echo "total wage array is"
echo ${Total_Wage[@]}


