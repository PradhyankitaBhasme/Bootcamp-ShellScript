read -p "Enter the width and height of rectangular plot in meters" width height;
squarem=$(echo "$width * $height" | bc -l)
squarein=$(echo "squarem * 1550" | bc -l)
echo "Area of the rectangular plot is: $squarem square meters or $squarein square inches";
