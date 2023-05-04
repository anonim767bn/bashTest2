#!/bin/bash
chmod +x task.sh
./task.sh family family2

if [[ $? -eq 0 ]]
then
    echo "TEST successful"
    exit 0
else
    echo "Test FAILED"
    exit 1
fi
