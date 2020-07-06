#!/bin/bash

echo "你好啊"

echo $INPUT_PAIRS

pairs=(${INPUT_PAIRS//,/ })
for var in ${array[@]}
do
   echo $var
done