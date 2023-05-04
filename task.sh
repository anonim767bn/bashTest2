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

count1=$(cat "$1" | wc -l)
count2=$(cat "$2" | wc -l)

if [[ "$count1" -eq "$count2" ]]
then
    echo "количество людей совпадает"
    exit 0
else
    echo "в группах разное количество людей!!!!!"
    exit 1
fi

