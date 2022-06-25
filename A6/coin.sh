tails=1;
check=$((RANDOM%2));
if [ $check -eq $tails ]
then
echo "tails";
else
echo "heads";
fi
