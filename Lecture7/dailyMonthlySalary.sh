#!/bin/bash -x
PartTime=1;
FullTime=2;
MaxHrsInMonth=4;
EmpRatePerHr=200;
NumOfWorkingDays=20;

TotalEmpHr=0;
TotalWorkingDays=0;

function GetWorkHrs() {
	local $EmpCheck=$1
	case $EmpCheck in
		$FullTime)
		EmpHrs=8
		;;
		$PartTime)
		EmpHrs=4
		;;
		*)
		EmpHrs=0
		;;
	 esac
	echo  $EmpHrs
}

while [[ $TotalEmpHrs -lt $MaxHrsInMonth && 
	$TotalWorkingDays -lt $NumOfWorkingDays ]]
do
	((TotalWorkingDays++))
	EmpCheck=$((RANDOM%3));
	EmpHrs="$( GetWorkHrs $EmpCheck )"
	TotalEmpHrs=$(($TotalEmpHrs+$EmpHrs))
	DailyWage[$TotalWorkingDays]=$(($EmpHrs*$EmpRatePerHr));
done
TotalSalary=$(($TotalEmpHrs*$EmpRatePerHr));
echo ${DailyWage[@]}
