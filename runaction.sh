#!/bin/bash

string=$INPUT_PAIRS
array=(${string//,/ })

for var in ${array[@]}
do
   key=${var%:*}
   value=${var#*:}
   sed -i "s#$key#$value#g" `grep $key -rl $INPUT_DEST`
done