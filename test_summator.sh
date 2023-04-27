#!/bin/bash

echo "Запущен тест сумматора"

chmod +x summator.sh
test_data=summator_data

if [[ ! -f $test_data ]]
then
    echo "Данные для теста не найдены"
    exit 1
fi

while read arg1 arg2 expected
do
    result=$(./summator.sh $arg1 $arg2)
    if [[ $result -ne $expected ]]
    then
        echo "$arg1 + $arg2 = $result"
        echo "Ожидаемое значение: $expected"
        echo "Тест провален"
        exit 1
    else
        echo "$arg1 + $arg2 = $result, OK"
    fi
done < $test_data

echo "Тест пройден успешно"
