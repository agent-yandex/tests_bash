#!/bin/bash

echo "Запущен тест вывода script.sh"

chmod +x script.sh
value="Раз два три"

result=$(echo $value | ./script.sh)
expected="ваш текст: $value"

if [[ $result == $expected ]]
then
    echo "Тест пройден успешно"
    exit 0
else
    echo "Тест провален"
    exit 1
fi