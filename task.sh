#!/bin/bash

if [[ ! -n $1 || ! -n $2 ]] 
then 
    echo "вы ввели недостаточно аргументов с группами"
    exit 1
fi
if [[ ! -f $1 || ! -f $2 ]]
then
    echo "это не файлы"
    exit 1
fi
group1=0
group2=0
for students in 'cat $1'
do
    group1=$(($group1+1))
done

for people in `cat $2`
do
    group2=$(($group2+1))
done

if [[ $group1 -eq $group2 ]]
then
    echo "количество людей совпадает"
    exit 0
else
    echo "в группах разное количество людей!!!!!"
    exit 1
fi

