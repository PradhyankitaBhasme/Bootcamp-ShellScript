echo "Enter Year"
read year
if(( ("$year" % 400) == "0" )) || (( ("$year" %4 == "0") && ("$year" % 100 !="0") ));
then
echo "year is leap year";
else
echo "$year is not leap year"
fi
