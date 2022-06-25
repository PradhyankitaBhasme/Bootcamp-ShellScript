#!/usr/local/bin/bash -x
#Note using Latest Bash Version 5.0

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound " ${sounds[dog]} # Dogs sound
echo "All animal sound " ${sounds[@]} #all values
echo "Animal " ${!sounds[@]} #all keys
echo "Number of animals " ${#sounds[@]} #number of elements
#unset sounds[dog] #delete dog

#values=1
#declare -A counterValues
#function setCounterValues() {
#	for (( counter=1; counter<=2; counter++ ))
#	do
#		values=$(( $values + $counter ))
#}
