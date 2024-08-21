#!/bin/bash
read -p "Enter the room number: " room
result=$(grep "$room" "timetable.csv" | rev | cut -d ',' -f2- | rev)
modified_result=$(echo "$result" | sed 's/,/|/g')
echo "DAY  | TIME | COURSE | INSTRUCTOR"
echo "$modified_result"