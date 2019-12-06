#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

attendance=$((RANDOM%2))
if [[ attendance -eq 0 ]]
then
	echo "employee is absent"
else
	echo "employee is present"
fi

