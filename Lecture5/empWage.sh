#!/bin/bash -x
Present=1;
randomCk=$((RANDOM%2));
if [ $Present -eq $randomCk ];
then
echo "Employee is Present.";
ERatePHour=200;
EHrsWorking=8;
salary=$(($ERatePHour * $EHrsWorking));
else
echo "Employee is absent.";
salary=0;
fi
