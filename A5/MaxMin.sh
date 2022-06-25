MAXCOUNT=10
count=1
while [ "$count" -le $MAXCOUNT ]; 
do
number[$count]=$(((RANDOM%99)+100))
let "count += 1"
done
echo "${number[*]}"
