#!/bin/bash

filename=file
echo "Запущен тест создания файла"

chmod +x file_creator.sh
./file_creator.sh $filename

if [[ -f $filename ]]
then
    echo "Файл $filename существует, тест прошел успешно"
    rm $filename
    exit 0
else
    echo "Файл $filename отсутствует в папке, тест провален"
    exit 1
fi