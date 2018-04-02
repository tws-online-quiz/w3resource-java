#!/usr/bin/env bash

DataTypesExercisesCount=$(find ./ -type f -name "DataTypesExercises-*.java" | wc -l)
DateTimeCount=$(find ./ -type f -name "DateTime-*.java" | wc -l)
NumbersCount=$(find ./ -type f -name "Numbers-*.java" | wc -l)
InputOutputFileSystemCount=$(find ./ -type f -name "InputOutputFileSystem-*.java" | wc -l)

if [ ! ${DataTypesExercisesCount} -eq 10 ]; then
    echo "Data Types Exercises 练习数量不满10道!";
    exit 1;
fi

if [ ! ${DateTimeCount} -eq 37 ]; then
    echo "Date Time 练习数量不满37道!";
    exit 1;
fi


if [ ! ${NumbersCount} -eq 28 ]; then
    echo "Numbers 练习数量不满28道!";
    exit 1;
fi


if [ ! ${InputOutputFileSystemCount} -eq 18 ]; then
    echo "Input-Output-File-System 练习数量不满18道!";
    exit 1;
fi


