#!/bin/bash
echo "Welcome to Employee Wage Computation"

attendance=$((RANDOM%3))

present=1
absent=0
wagePerHour=20
fullTimeHour=8
partTimeHour=4

#partTimeEmp mean 1


if (( $attendance == $present ))
then
	echo "Employee is present-$attendance"
else
	echo "Employee is absent-$attendance"
fi

#dailyfullTimeEmpWage=$(( $fullTimeHour	* $wagePerHour ))
#dailyPartTimeEmpWage=$(( $partTimeHour * $wagePerHour))

case $attendance in

	1)empWorkHour=4 ;;
	2)empWorkHour=8 ;;
		*)empWorkHour=0

esac
dailyEmpWage=$(( $wagePerHour * $empWorkHour ))
echo $dailyEmpWage



