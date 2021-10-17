RANDOM=$$
FILE=./inputFile
if [ -f "$FILE" ]; then
    rm $FILE
fi

if [ "$1" == "" ]; then
    x=9
else
    x=$1
fi

for i in `seq 1 $x`
do
  echo "$i, $RANDOM" >> inputFile
done
