#!/bin/bash
echo "Course Name | Number of classes(MAX)"
count_course=`cut -f3 -d ',' "timetable.csv" | tail -n +2 | sort | uniq -c | sort | tail -1`
read count course <<< "$count_course"
printf "%-11s | %s\n" "$course" "$count" 