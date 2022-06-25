mkdir "backup1"
list=$(ls /bin)
for file in `ls *.txt`
do
#echo $file
cp /bin/$file backup
done  
