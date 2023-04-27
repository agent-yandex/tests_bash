#!/bin/bash

if [[ -f $1 ]]
then
    rm $1
else
    echo "Файл $1 не сущетсвует"
fi