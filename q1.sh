#!/bin/bash

echo "Instructor | Number of Class "
cut -f4 -d ',' "timetable.csv" | tail -n +2 | sort | uniq -c | while read -r count instructor;
do
    printf "%-10s | %s\n" "$instructor" "$count"
done
