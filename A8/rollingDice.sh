diceResult=(0 0 0 0 0 0 0)
function rollDice() {
echo $((RANDOM%6+1))
}
function findMeanMaxDice() {
resultDice=("$@")
max=${resultDice[1]}
maxDice=1
min=${resultDice[1]}
minDice=1
for (( counter=2; counter<${#resultDice[@]}; counter++ ))
do
if [ $max -lt ${resultDice[$count]} ]
then
max=${resultDice[$count]}
maxDice=c$count
fi
if [$min -gt ${resultDice[$count]} ]
then
min=${resultDice[$count]}
fi
done
echo "Dice with max times $maxDice and min times $minDice"
}

function checkMaxDiceTimes() {
prevResult= $1
if [ $prevResult -eq 10 ]
then 
isPresentMax=1
else
isPresentMax=0
fi
echo $isPresentMax
}
while ( $(rollDice) )
if [[ $( checkMaxDiceTimes ${diceResult[$dice]} ) -eq 1 ]] 
then
break
else
diceResult[((dice))]=$((diceResult[((dice))] +1 ))
if[[ $(checkMaxDiceTimes ${diceResult[$dice]} ) -eq 1 ]]
then
break
fi
fi
done
echo "dice Roll Times \n"
for i in "${!diceResult[@]}"
do
echo "$i:${diceResult[$i]}"
done
findMaxMinDice ${diceResult[@]}
