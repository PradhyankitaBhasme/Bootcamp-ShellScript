#!/bin/bash -x
PartTimeEmp=1;
FullTimeEmp=2;
empRatePerHr=200;
empCheck=$((RANDOM%3));
case $empCheck in
	$FullTimeEmp)
		empHrs=8
		;;
	$PartTimeEmp)
		empHrs=4
		;;
	*)
	empHrs=0
		;;
esac
