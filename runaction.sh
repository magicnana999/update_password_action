#!/bin/bash

echo $INPUT_DEST
echo $INPUT_PAIRS
echo `ls`
echo "starting..."

string=$INPUT_PAIRS
array=(${string//,/ })

for var in ${array[@]}
do
   key=${var%:*}
   value=${var#*:}
   sed -i "s#$key#$value#g" `grep $key -rl $INPUT_DEST`
done
echo "OK"

