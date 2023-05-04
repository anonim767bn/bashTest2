#!/bin/bash

chmod +x od.sh
./od.sh family family2

if [[ $? -eq 0 ]]
then
    echo "Тест успешен"
    exit 0
else
    echo "Тест провален"
    exit 1
fi