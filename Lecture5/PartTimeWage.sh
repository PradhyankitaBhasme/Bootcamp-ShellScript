#!/bin/bash -x
presentFullTime=1;
presentPartTime=2;
ratePerHr=200;
randomCheck=$((RANDOM%3));
if [ $presentFullTime -eq $randomCheck ];
then 
	workingHrs=8;
elif [ $presentPartTime -eq $randomCheck ];
then
	workingHrs=4;
else
	workingHrs=0;
fi
salary=$(($ratePerHr*$workingHrs));
