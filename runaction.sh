#!/bin/bash

echo $INPUT_DEST
echo $INPUT_PAIRS
echo `pwd`
echo `ls -alFs`
echo "update starting..."

string=$INPUT_PAIRS
array=(${string//,/ })

for var in ${array[@]}
do
   key=${var%:*}
   value=${var#*:}
   sed -i "s#$key#$value#g" `grep $key -rl $INPUT_DEST`
done
echo "update OK"
