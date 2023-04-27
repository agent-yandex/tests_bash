#!/bin/bash

filename=file
echo "Запущен тест удаления файла"

if [[ ! -f $filename ]]
then
    touch $filename
fi

chmod +x file_remover.sh
./file_remover.sh $filename

if [[ ! -f $filename ]]
then
    echo "Файл был удален, тест прошел успешно"
    exit 0
else
    echo "Файл не был удален, тест провален"
    rm $filename
    exit 1
fi