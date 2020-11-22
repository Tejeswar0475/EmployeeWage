#!/bin/bash
echo "Welcome to Employee Wage Computation"

presentForPartTime=1
presentForFullTime=2
absent=0
wagePerHour=20
fullTimeHour=8
partTimeHour=4
empWorkingDays=0
empWorkingHours=0
maxWorkingDays=20
maxWorkingHours=100

function dailyEmpWage()
{
	empWorkHours=$1
	dailyEmpWage=$(( $empWorkHours * $wagePerHour ))
	echo $dailyEmpWage
}

function empWorkingHours()
{
	case $attendance in

		1)empWorkHour=4 ;;
		2)empWorkHour=8 ;;
			*)empWorkHour=0

	esac
	echo $empWorkHour
}

function totalWage()
{
	empWage=$1
	totalEmpWage=$(( $empWage * $wagePerHour ))
	echo $totalEmpWage
}

while (( $empWorkingDays < $maxWorkingDays && $empWorkingHours < $maxWorkingHours ))
do
	((empWorkingDays++))
	((empworkingHours++))

	attendance=$((RANDOM%3))
	if (( $attendance == $presentForPartTime ))
	then
		((fullWork++))

	elif (( $attendance == $presentForFullTime ))
	then
		((halfWork++))
	else
		((absent++))
	fi


	empWorkingHours="$( empWorkingHours $attendance )"
	totalEmpHours=$(( $totalEmpHours + $empWorkingHours ))
	empDailyWage[$empWorkingDays]="$( dailyEmpWage $empWorkingHours )"
	empTotalWage[$empWorkingDays]="$( totalWage $totalEmpHours )"
	day[$count]=$count

	if [[ $count == 20 ]]
	then
		break
	fi
((i++))

done

totalWage=$(( $wagePerHour * $totalEmpHours ))
totalDay=$(( $fullWork + $halfWork + $absent ))
i=1
echo "Days    DailyWage   TotalWage"
while (( $empWorkingDays <= $totalDay ))
do

	echo "day[$i]	${empDailyWage[$i]}	${empTotalWage[$i]}"

	if [[ $i == 20 ]]
	then
		exit 0
	fi
((i++))
done
