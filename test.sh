#!/bin/bash

string=$1
array=(${string//,/ })

for var in ${array[@]}
do
   key=${var%:*}
   value=${var#*:}
   sed -i "s#$key#$value#g" `grep '$key' example/application.yaml`
done