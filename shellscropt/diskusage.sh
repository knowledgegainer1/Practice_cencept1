#!/bin/bash



list=$(df -hT | grep -vE 'tmp|File')
treshold=1
message=""

while IFS= read -r line;
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line| awk '{print $1F}')
    if [ $usage -ge $treshold ]; 
    then
        message+="high disk usage on $partition :$usage \n"
    fi
done <<<$list


echo "$message"
