set -ex

RANDOM=$$
FILE=./inputFile
if [ -f "$FILE" ]; then
    rm $FILE
fi
if [ "$1" == "" ]; then
    x=9
else
    x=`expr $1 -1`
fi

for (( i=0; i<=$x; i++ ))
do
  echo "$i, $RANDOM" >> inputFile
done
