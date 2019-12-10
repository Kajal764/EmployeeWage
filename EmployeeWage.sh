#!/bin/bash -x

echo "Welcome to Employee Wage Computation"

#constant
WAGE_PER_HOUR=20
FULL_DAY_WORKING_HOUR=8
HALF_DAY_WORKING_HOUR=4

#variables
days=0
totalWage=0
totalWorkingHours=0

declare -A wage

function getHours(){
	case $1 in
	0)
		echo "0"
   	;;
	1)
   		echo $HALF_DAY_WORKING_HOUR
   	;;
   	2)
   		echo $FULL_DAY_WORKING_HOUR
   	;;
	esac
}


while [[ $totalWorkingHours -le 100 && $days -le 20 ]] 
do
	days=$(($days+1))
	hours=$(getHours $((RANDOM%3)))
	daily=$(( $hours * $WAGE_PER_HOUR ))
	totalWorkingHours=$(($totalWorkingHours + $hours))
	total=$(( $total+$daily ))
	wage["$days"]="$days    $daily    $total"
	
done

for(( days=1;days<=20;days++ ))
do
	 echo day${wage[$days]}
done
