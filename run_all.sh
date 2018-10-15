#!/bin/sh

#assign_dir='/Users/lisawang/Personal/teaching/homework-grading/unit-2-programming-assignment/'

if [[ $# -ne 2 ]];
then
    echo "This script will run the main program in each student's repository"
    echo "Please provide two parameters: "
    echo "    1. Directory path where all students' repositories are cloned to"
    echo "    2. Filename of the java program (should be same as class name)"
else
    assign_dir=$1 
    program=$2
    for dir in $assign_dir*/; do
        echo "$dir"
        cd ${dir}org.dtechhs.nested/src
        javac ${program}.java
        java ${program} 
        cd $assign_dir
    done
fi

