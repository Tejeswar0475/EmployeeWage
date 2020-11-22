#!/bin/bash
echo "Welcome to Employee Wage Computation"

presentForPartTime=1
presentForFullTime=2
absent=0
wagePerHour=20
fullTimeHour=8
partTimeHour=4
empWorkingDays=0
maxWorkingDays=20



function dailyEmpWage()
{

	empWorkHours=$1
	dailyEmpWage=$(( $empWorkHours * $wagePerHour ))
	echo $dailyEmpWage

}




while (( $empWorkingDays <= $maxWorkingDays ))
do
	attendance=$((RANDOM%3))
	if (( $attendance == $presentForPartTime ))
	then
		echo "Employee is present-$attendance, for part time"

	elif (( $attendance == $presentForFullTime ))
	then
		echo "Employee is absent-$attendance, for full time"
	else
		echo "Employee is absent-$attendance"
	fi

	case $attendance in

		1)empWorkHour=4 ;;
		2)empWorkHour=8 ;;
			*)empWorkHour=0

	esac

	dailyEmpWage $attendance

((empWorkingDays++))
done





