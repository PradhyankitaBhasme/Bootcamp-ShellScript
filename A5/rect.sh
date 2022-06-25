#!/bin/sh
read -p "Enter length" length
read -p "enter width" width
area=$[ $length*$width ]
declare -i n
in=inches
ft=feet
read area in "as" feet
if []
then
echo "$area $in= $[n/12] $ft"
fi
echo "The area of the rect is $area"
