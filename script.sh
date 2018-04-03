#!/usr/bin/env bash

DataTypesExercisesCount=$(find ./ -type f -name "DataTypesExercises-*.java" | wc -l)
DateTimeCount=$(find ./ -type f -name "DateTime-*.java" | wc -l)
NumbersCount=$(find ./ -type f -name "Numbers-*.java" | wc -l)
InputOutputFileSystemCount=$(find ./ -type f -name "InputOutputFileSystem-*.java" | wc -l)
AllJavaFileCount=$(find ./ -type f -name "*.java" | wc -l)
isAvailable=0

if [ ${DataTypesExercisesCount} -lt 10 ]; then
    echo "Data Types Exercises 练习数量不满10道!";
    isAvailable=1
fi

if [ ${DateTimeCount} -lt 37 ]; then
    echo "Date Time 练习数量不满37道!";
    isAvailable=1
fi


if [ ${NumbersCount} -lt 28 ]; then
    echo "Numbers 练习数量不满28道!";
    isAvailable=1
fi


if [ ${InputOutputFileSystemCount} -lt 18 ]; then
    echo "Input-Output-File-System 练习数量不满18道!";
    isAvailable=1
fi

if [ ${isAvailable} -eq 1 -a  ${AllJavaFileCount} -lt 93 ]; then
    echo "练习题总数量不足93道!"
    exit 1
fi


