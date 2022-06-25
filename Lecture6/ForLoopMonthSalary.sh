#!/bin/bash -x
PartTime=1;
FullTime=2;
TotalSalary=0;
EmpRatePerHr=20;
NumOfWorkingDays=20;
for(( day=1; day<=$NumOfWorkingDays; days++ ))
do
	EmpCheck=$((RANDOM%3));
	case $EmpCheck in
		$FullTime)
			EmpHrs=8
			;;
		$PartTime)
			EmpHrs=4;
			;;
		*)
			EmpHrs=0;
			;; 
	esac
salary=$(($EmpHrs*$EmpRatePerHr));
TotalSalary=$(($TotalSalary+$salary));
done
