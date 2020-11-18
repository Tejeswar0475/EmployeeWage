#!/bin/bash
echo "Welcome to Employee Wage Computation"
attendance=$((RANDOM%2))
present=1
absent=0
wagePerHour=20
fullDayHour=8

if (( $attendance == $present ))
then
	echo "Employee is present-$attendance"
else
	echo "Employee is absent-$attendance"
fi

dailyEmpWage=$(( $wagePerHour * $fullDayHour ))

