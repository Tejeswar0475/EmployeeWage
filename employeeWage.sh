#!/bin/bash
echo "Welcome to Employee Wage Computation"
attendance=$((RANDOM%2))
present=1
absent=0
if (( $attendance == $present ))
then
	echo "Employee is present-$attendance"
else
	echo "Employee is absent-$attendance"
fi
