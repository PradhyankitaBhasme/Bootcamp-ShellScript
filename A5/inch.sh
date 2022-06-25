read -p "Enter the number of inches:"  inch
feet=$`awk "BEGIN{print $inch/12}"`
echo $feet
