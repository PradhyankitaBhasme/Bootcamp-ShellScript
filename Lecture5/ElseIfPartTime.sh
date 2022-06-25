#!/bin/bash -x
present=1;
randomCheck=$((RANDOM%3));
if[ $present -ge $randomCheck ];
then
	echo "Employee is present";
	RatePerHr=200;
	WorkingHrs=8;
	salary=$(($RatePerHr * $WorkingHrs));
elif[ $present -eq $randomCheck ];
	echo "Employee present";
	RatePerHr=200;
	WorkingHrs=4;
	salary=$(($RatePerHr * $WorkingHrs));
else
	echo "Employee is absent";
	salary=0;
fi
