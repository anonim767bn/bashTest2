#!/bin/bash

if [[ ! -n $1 ]] || [[ ! -n $2 ]]
then
    echo "Аргументы не даны."
    exit 1
fi

if [[ ! -f $1 ]] || [[ ! -f $2 ]]
then
    echo "Файлы не найдены"
    exit 1
fi

chmod +r $1
chmod +r $2

if grep -Fxq -f "$1" "$2"
then
    echo "встретилисьодинаковые"
    exit 1
fi
echo "Всё хорошо"
exit 0