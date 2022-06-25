for i in {1..5}
do
echo $((RANDOM%99))
done
num1=$(( ( $RANDOM%99 ) + 1 ));
num2=$(( ( $RANDOM%99 ) + 1 ));
num3=$(( ( $RANDOM%99 ) + 1 ));
num4=$(( ( $RANDOM%99 ) + 1 ));
num5=$(( ( $RANDOM%99 ) + 1 ));
sum=$(( num1+num2+num3+num4+num5 ))
average=$(( sum/2 ))
echo "the sum is: " $sum
echo "the average: " $average
